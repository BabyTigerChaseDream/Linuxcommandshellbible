#!/bin/bash
# simple demonstration of the getopts command
#
echo
while getopts :ab:c opt
do
    case "$opt" in
        a) echo "Found the -a option" ;;
        b) echo "Found the -b option, with value $OPTARG";;
        c) echo "Found the -c option" ;;
        *) echo "Unknown option: $opt";;
    esac
done
$

#$ ./test19.sh -b "test1 test2" -a
#Found the -b option, with value test1 test2
#Found the -a option

#$ ./test19.sh -abtest1
#Found the -a option
#Found the -b option, with value test1
