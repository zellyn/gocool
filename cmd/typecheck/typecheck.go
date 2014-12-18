package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path"

	"github.com/zellyn/gocool/parser"
	"github.com/zellyn/gocool/types"
)

func main() {
	if len(os.Args) != 2 {
		log.Fatalf("Usage: typecheck <filename>\n")
	}
	contents, err := ioutil.ReadFile(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}
	_, filename := path.Split(os.Args[1])

	prog, err := parser.Parse(filename, string(contents))
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
	_, err = types.Check(prog)
	if err != nil {
		fmt.Fprintf(os.Stderr, "%s\n", err)
		os.Exit(1)
	}
	fmt.Print(prog.Dump())
}
