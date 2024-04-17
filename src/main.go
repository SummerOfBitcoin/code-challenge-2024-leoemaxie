package main

import (
	"fmt"
)

func main() {
	hash := hashTransaction([]byte("Hello, World!"))
	fmt.Printf("%x\n", hash)
}
