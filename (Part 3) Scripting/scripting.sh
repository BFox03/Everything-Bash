#! /usr/bin/bash

: '
Interesting concept with variables is their necessity to contain $ before use
As well $0 will represent the file (printing $0 will give the name of the file, because its the first input)
Anything after (ex $1) would be printing the input given when executing in command line
Ex. if we put "./scripting.sh hello" into this input we would get the exact thing outputted
'

echo $0 $1


: ' 
This type of input can be used with arrays as well
To declare an array sinply use "args=("$@")" for an infinite capacity array (args being the name of the array)
'
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}
#Now with 2 inputs it will return both (also functional without arrays, just will start at 0 not printing file name)

#Quick rundown on array syntax and commands
array=(first second third)
echo ${array[@]} #print entire array can also use *
echo $# #print length of array, since there is 6 indexes in the 2 arrays it will show 6

#This loop command will read all lines in the specified function given in the command line
#Ex. by typing "./scripting.sh file\ with\ text.txt"
while read line
do
    echo "$line"   
done < "${1:-/dev/stdin}"