// Package symbols implements a very simple symbol table. Lookup is
// linear. Symbol tables are immutable: adding a new symbol returns
// the new table.
package symbols

// An entry holds a single Entry in the symbol table
type Entry struct {
	Name  string
	Type  string
	Class string // Owing object type, or "" for stack variable
	Index int
}

type Table struct {
	Entries     []Entry
	NextStack   int
	NextFeature int
}

func (t Table) Get(name string) (Entry, bool) {
	for i := len(t.Entries) - 1; i >= 0; i-- {
		if t.Entries[i].Name == name {
			return t.Entries[i], true
		}
	}
	return Entry{}, false
}

func (t Table) Add(name string, typ string, class string) Table {
	if class == "" {
		return Table{
			Entries:     append(t.Entries, Entry{name, typ, class, t.NextStack}),
			NextStack:   t.NextStack + 1,
			NextFeature: t.NextFeature,
		}
	}
	return Table{
		Entries:     append(t.Entries, Entry{name, typ, class, t.NextFeature}),
		NextStack:   t.NextStack,
		NextFeature: t.NextFeature + 1,
	}
}

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

	return Table{
		Entries:     append(t.Entries, t2.Entries...),
		NextStack:   nextStack,
		NextFeature: nextFeature,
	}
}

func (t Table) Has(name string) bool {
	_, ok := t.Get(name)
	return ok
}
