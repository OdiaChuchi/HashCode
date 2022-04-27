#!/bin/bash

for file in `find . -not -path '*/\.*' -type f \( ! -iname ".*" \)`
    do
        echo "Running test for $file"
        if [[ $file == *.py ]]
            then
                python3 -m py_compile $file
        elif [[ $file == *.cpp ]]
            then
                g++ $file
        elif [[ $file == *.c ]]
            then
                gcc $file
        elif [[ $file == *.md ]]
            then
                echo "Ignoring compile test for markdown files"
        else
            echo "Unknown file type"
            return 1
        fi            
    done
