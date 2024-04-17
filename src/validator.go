package main

import (
	"crypto/sha256"
)

func hashTransaction(data []byte) []byte {
	hash := sha256.New()
	hash.Write(data)
	return hash.Sum(nil)
}
