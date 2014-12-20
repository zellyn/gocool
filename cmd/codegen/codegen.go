package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path"

	"github.com/zellyn/gocool/cgen"
	"github.com/zellyn/gocool/parser"
	"github.com/zellyn/gocool/types"
)

var (
	useGc  = flag.Bool("usegc", false, "use garbage collection")
	testGc = flag.Bool("testgc", false, "garbage collect after every allocation")
)

func main() {
	flag.Parse()
	args := flag.Args()
	if len(args) != 1 {
		log.Fatalf("Usage: codegen <filename>\n")
	}
	contents, err := ioutil.ReadFile(args[0])
	if err != nil {
		log.Fatal(err)
	}
	_, filename := path.Split(args[0])

	prog, err := parser.Parse(filename, string(contents))
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
	classes, err := types.Check(prog)
	if err != nil {
		fmt.Fprintf(os.Stderr, "%s\n", err)
		os.Exit(1)
	}

	asm := cgen.NewAsm(os.Stdout)
	cgen.Gen(prog, classes, *useGc, *testGc, asm)
}
