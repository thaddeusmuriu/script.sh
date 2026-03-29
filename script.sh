#!/bin/bash

doindent(){
    #do a small indent depending on how deep into the tree one is
    j=0
    while [ "$j" -lt "$1" ]
    do
        echo -n " "
        ((j++))
    done
}

traverse(){
#traverse directory
    cd "$1" || return
    for i in *
    do
        doindent "$2"
        if [ -d "$i" ]; then
            echo "Directory: $i"
            traverse "$i" $(($2 + 1))
        else
            echo "File: $i"
        fi
    done
}

if [ -z "$1" ]; then
    traverse "." 0
else
    traverse "$1" 0
fi
