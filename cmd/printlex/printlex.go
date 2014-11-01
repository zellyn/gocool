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
		log.Fatalf("Usage: printlex <filename>\n")
	}
	contents, err := ioutil.ReadFile(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}
	_, file := path.Split(os.Args[1])
	fmt.Printf("#name %q\n", file)

	items := parser.LexItems(os.Args[1], string(contents))
	for _, i := range items {
		fmt.Println(i)
	}
}
