#!/bin/bash
# testing the read -p option
#
read -p "Please enter your age: " age
days=$[ $age * 365 ]
echo "That makes you over $days days old! "

#$ ./test22.sh
#Please enter your age: 10
#That makes you over 3650 days old!
