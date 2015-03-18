package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path"

	"github.com/zellyn/gocool/parser"
)

var recursiveDescent = flag.Bool("rd", false, "use recursive descent parser")

func main() {
	flag.Parse()

	if len(flag.Args()) != 1 {
		log.Fatalf("Usage: printparse <filename>\n")
	}
	fullFilename := flag.Arg(0)
	contents, err := ioutil.ReadFile(fullFilename)
	if err != nil {
		log.Fatal(err)
	}
	_, filename := path.Split(fullFilename)

	var prog *parser.Program
	if *recursiveDescent {
		prog, err = parser.RdParse(filename, string(contents))
	} else {
		prog, err = parser.Parse(filename, string(contents))
	}
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	fmt.Print(prog.Dump())
}
