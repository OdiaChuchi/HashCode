#!/bin/bash

for file in `ls -Rp | grep -v /`
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
        else
            echo "Unknown file type"
            return 1
        fi            
    done
