#!/bin/bash 
# Grabbing the last parameter 
# 

params=$# 
echo 
echo Total parameter num is $params 
echo The last parameter is ${!#} 
echo 
