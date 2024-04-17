package main

import "os"

func outputFile(filePath string, content string) bool {
	err := os.WriteFile(filePath, []byte(content), 0644)

	if err != nil {
		return false
	}

	return true
}
