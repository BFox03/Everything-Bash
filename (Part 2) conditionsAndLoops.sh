#! /usr/bin/bash

#Declaring a variable
count=10



#If statement begins with "if" and a condition in square brackets
#We declare our variable to be used which is count (which must be prefixed by "$")
#Conditional phrases are as follows
#-eq --> equals to
#-ne --> not equals to
#-gt --> greater than ">"
#-lt --> less than "<" 
#You may also use < or > or <= or >= as long as the square brackets are replaced with double paratheses 

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
