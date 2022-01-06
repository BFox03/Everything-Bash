#! /usr/bin/bash

#Declaring a variable
count=10

: '
If statement begins with "if" and a condition in square brackets
We declare our variable to be used which is count (which must be prefixed by "$")
Conditional phrases are as follows
-eq --> equals to
-ne --> not equals to
-gt --> greater than ">"
-ge --> greater than or equal to ">="
-lt --> less than "<" 
-le --> less than or equal to "<="
You may also use < or > or <= or >= as long as the square brackets are replaced with double paratheses '

if [ $count -eq 9 ]
then 
	echo "count is equal to 9"
elif ((count >= 10))
then
	echo "count is greater than or equal to 10"
	
else 
	echo "count is less than 9"
fi


#Other operators include && (the and operator)
#instead of two comparisons separated as seen below one could use a double square bracket to encompass all comaparisons with the && in the middle

if [ "$count" -gt 9 ] && (( "$count" < 11 ))
then
	echo "count is greater than 9 and less than 11"
else
	echo "count is not greater than 9 and less than 11"
fi

#While Loop syntax 
#The code will execute until the inside statement is false
#Make sure to have the spaces exact (or else with get syntax error)
variable=1

while [ $variable -lt 10 ]
do
	echo "$variable"
	variable=$(( variable+1 ))
done

#Until Loop syntax
#The code will execute until the inside statement is true
#This replaces the not equal to 
number=1
until [ $number -ge 10 ]
do
    echo "$number"
    number=$(( number+1 ))
done

: ' 
For loops syntax
The statement can be done in a few different ways:
   after "in" you may 1 2 3 4 5 to execute the code 5 times ($i changing each time to match the number)
   give a range {0..10} as seen below
   change interval of change by adding factor {0..10..2} ($i changes by 2; ex. i=0 then 2 then 4 exc)
'
for i in {0..10}
 do
    echo $i
 done
 
 : ' 
 Secondary For loop syntax..
 For loops can also be executed similarly to other languages
 '
 for (( i=0; i<5; i++ ))
 do
    echo $i
 done
 
 : ' 
 Break and Continue statements 
 Break statements are used to exit loops
 Continue statements are used to restart a loop (skipping the rest)
 
 The loop below will go from 0 to 15 but...
    at 3 and 7 the loop hits a continue statement skipping the print line
    when i reaches 10 the loop breaks ending the loop
 '
  for (( i=0; i<=15; i++ ))
 do
    if [ $i -eq 3 ] || [  $i -eq 7 ]
    then
    continue
    fi
    if [ $i -eq 10 ]
    then 
    break
    fi
    echo $i
 done
