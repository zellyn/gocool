package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path"

	"github.com/zellyn/gocool/parser"
)

func main() {
	if len(os.Args) != 2 {
		log.Fatalf("Usage: printparse <filename>\n")
	}
	contents, err := ioutil.ReadFile(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}
	_, filename := path.Split(os.Args[1])

	prog, err := parser.Parse(filename, string(contents))
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	fmt.Print(prog.Dump())
}
