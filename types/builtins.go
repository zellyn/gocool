package types

import (
	"fmt"
	"os"

	"github.com/zellyn/gocool/parser"
)

// Fake builtins definition, to get the types right.
var builtinSource = `class Object {
  abort() : Object {
    new Object
  };
  type_name() : String {
    "Object"
  };
  copy() : SELF_TYPE {
    self
  };
};

class IO inherits Object {
  out_string(x : String) : SELF_TYPE {
    self
  };
  out_int(x : Int) : SELF_TYPE {
    self
  };
  in_string() : String {
    "dummy"
  };
  in_int() : Int {
    0
  };
};

class Int inherits Object {
};

class String inherits Object {
  length() : Int {
    0
  };
  concat(s : String) : String {
    "dummy"
  };
  substr(i : Int, l : Int) : String {
    "dummy"
  };
};

class Bool inherits Object {
};
`

// Builtins returns an array of classes, representing the builtin
// classes. The actual method implementations are placeholders, but
// have the correct type signatures.
func Builtins() []*parser.Class {
	prog, err := parser.Parse("builtins", builtinSource)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Fatal error; aborting: %s\n", err)
		os.Exit(1)
	}
	prog.SplitFeatures()
	return prog.Classes
}
