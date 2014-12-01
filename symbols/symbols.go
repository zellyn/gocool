// Package symbols implements a very simple symbol table. Lookup is
// linear. Symbol tables are immutable: adding a new symbol returns
// the new table.
package symbols

type Table interface {
	Get(name string) (typ string, ok bool)
	Add(name string, typ string) Table
}

func NewTable() Table {
	return table(nil)
}

type entry struct {
	k string
	v string
}

type table []entry

func (t table) Get(name string) (string, bool) {
	for i := len(t) - 1; i >= 0; i-- {
		if t[i].k == name {
			return t[i].v, true
		}
	}
	return "", false
}

func (t table) Add(name string, typ string) Table {
	return append(t, entry{name, typ})
}
