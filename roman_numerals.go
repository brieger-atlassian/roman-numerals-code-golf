package main

import (
	"fmt"
	"os"
)

func main() {
	// Printing
	fmt.Println("Hello, World!")

	// Looping
	for i := range 10 {
		fmt.Println(i)
	}

	// Accessing arguments
	for _, arg := range os.Args[1:] {
		fmt.Println(arg)
	}
}
