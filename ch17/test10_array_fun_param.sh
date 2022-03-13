#!/bin/bash
# array variable to function test
function testit {
    local newarray
    ###newarray=(;'echo "$@"')
    #newarray=('echo "$@"')
    newarray=($(echo "$@"))
    echo "The new array value is: ${newarray[*]}"
}
myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
#echo "The expanded array is ${myarray[@]}"
testit ${myarray[*]}
