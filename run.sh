#!/bin/env bash

PROGRAM_PATH="src"
PROGEAM_NAME="validator"

# Color codes
GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

build_program() {
    cd $PROGRAM_PATH 
    go build -o "$PROGEAM_NAME"

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Build successful.\nProceeding to run the program...${RESET}"
    else
        echo -e "${RED}Build failed. Exiting...${RESET}"
        exit 1
    fi
}

run_program() {
    "./$PROGEAM_NAME"
    rm "$PROGEAM_NAME"

    if [ $? -ne 0 ]; then
        echo -e "${RED}Encountered an error. Exiting...${RESET}"
        exit 1
    else
        echo -e "${GREEN}Program ran successfully. Artifacts: output.txt${RESET}"
    fi
}

build_program
run_program
