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
    while getopts c:b: option
    do
        case $option in
            h) help;;
            c) COMMAND=$OPTARG;;
            b) BROWSER=$OPTARG;;
        esac
    done
    if [ "$COMMAND" == "open" ]
    then
    sf org open --target-org crmlabs --browser $BROWSER
    fi
}

main $@