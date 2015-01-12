// Package symbols implements a very simple symbol table. Lookup is
// linear. Symbol tables are immutable: adding a new symbol returns
// the new table.
package symbols

import "fmt"

// An entry holds a single Entry in the symbol table
type Entry struct {
	Name  string
	Type  string
	Class string // Owning object type, or "" for stack variable
	Index int
}

type Table struct {
	Entries     []Entry
	NextStack   int
	NextFeature int
}

// Get retrieves an entry from a table by name.
func (t Table) Get(name string) (Entry, bool) {
	for i := len(t.Entries) - 1; i >= 0; i-- {
		if t.Entries[i].Name == name {
			return t.Entries[i], true
		}
	}
	return Entry{}, false
}

// Add adds a new entry to a table, returning a new table.
func (t Table) Add(name string, typ string, class string) Table {
	// Defensively copy, so we don't accidentally overwrite.
	entries := make([]Entry, len(t.Entries), len(t.Entries)+1)
	copy(entries, t.Entries)
	if class == "" {
		return Table{
			Entries:     append(entries, Entry{name, typ, class, t.NextStack}),
			NextStack:   t.NextStack + 1,
			NextFeature: t.NextFeature,
		}
	}
	return Table{
		Entries:     append(entries, Entry{name, typ, class, t.NextFeature}),
		NextStack:   t.NextStack,
		NextFeature: t.NextFeature + 1,
	}
}

// Replace changes the stack address of an entry in a table, returning
// a new table.
// TODO(zellyn): modifying in place is finicky: just append, without updating NextStack.
func (t Table) Replace(name string, typ string, class string) (Table, error) {
	if class == "" {
		return Table{}, fmt.Errorf("Table.Replace called with no class.")
	}

	e, found := t.Get(name)
	if !found {
		return t.Add(name, typ, class), nil
	}

	if e.Class == "" {
		return Table{}, fmt.Errorf("Table.Replace cannot replace %q, because the previous entry has no class.", name)
	}
	if e.Type != typ {
		return Table{}, fmt.Errorf("Table.Replace cannot replace %q, because the previous entry has type %q, but the new entry has type %q.", name, e.Type, typ)
	}

	es := make([]Entry, len(t.Entries))
	copy(es, t.Entries)

	for i := len(es) - 1; i >= 0; i-- {
		if es[i].Name == name {
			es[i] = Entry{name, typ, class, es[i].Index}
			break
		}
	}
	return Table{
		Entries:     es,
		NextStack:   t.NextStack,
		NextFeature: t.NextFeature,
	}, nil
}

// Append appends one entire table to the other. It complains if they
// contain overlapping indexes for stack or feature entries.
func (t Table) Append(t2 Table) Table {
	nextStack := t.NextStack
	if t2.NextStack > 0 {
		if nextStack > 0 {
			panic("Can't append tables with overlapping stack indexes")
		}
		nextStack = t2.NextStack
	}

	nextFeature := t.NextFeature
	if t2.NextFeature > 0 {
		if nextFeature > 0 {
			panic("Can't append tables with overlapping attribute indexes")
		}
		nextFeature = t2.NextFeature
	}

	entries := make([]Entry, len(t.Entries)+len(t2.Entries))
	copy(entries, t.Entries)
	copy(entries[len(t.Entries):], t2.Entries)

	return Table{
		Entries:     entries,
		NextStack:   nextStack,
		NextFeature: nextFeature,
	}
}
