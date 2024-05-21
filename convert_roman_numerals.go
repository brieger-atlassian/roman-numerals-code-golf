package main

import (
	"fmt"
	"os"
)

func main() {
	input := os.Args[1]

	fmt.Println(convertToRoman(input))
}

func convertToRoman(input string) string {
	// TODO: convert to roman numeral
	return "I"
}
