#!/bin/bash

function help() {
    HELP_MESSAGE=$"
        ./duck.sh -c open -b chrome
        -c COMMAND i.e. open
        -b BROWSER i.e. chrome
    "
    echo "$HELP_MESSAGE"
}

function main() {
    help
    while getopts c:b: option
    do
        case $option in
            c) COMMAND=$OPTARG;;
            b) BROWSER=$OPTARG;;
        esac
    done
    echo "COMMAND = $COMMAND, BROWSER = $BROWSER"
}

main $@