#!/bin/bash

function appendToFile {
    myFile=$1
    text=""
    while [ "$text" != "exit" ]; do 
        echo "What text do you want to append? (Type 'exit' break out of loop)"
        read text 

        if [ "$text" != "exit" ]; then 
            echo $text >> $myFile
        fi 
    done 

}

echo "Enter the name of a file:"
read file

if [ -e $file ]; then 
    echo "This file exists, do you wish to clear the contents of the file? (y/n)"
    read ans 

    if [[ "$ans" == "y" || "$ans" == "Y" ]]; then 

        echo "" > $file # clears contents

        appendToFile $file # add to file

        echo "Contents of $file:"
        cat $file
    else 
        echo "Contents remain the same for $file"
    fi  

else 
    echo "Creating file: $file"
    touch $file 

    appendToFile $file

    echo "Contents of $file:"
    cat $file
fi 
