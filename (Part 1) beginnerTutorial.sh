#This text is used to point where to run bash
#It is always needed when making a file
#To find which path it is use the command "cat /etc/shells"
#! /usr/bin/bash

#Because the terminal will not have read/write privilages you must
#type "chmod +x [file name]"
#You can check permissions by writting "ls -al"


#A nice way to have an output is through echo
echo "This is text that will be displayed through echo"


#To write onto a file you can use a single arrow to the file 
   #Note: If no file is found it will make one
echo "This will be written onto the file" > file.txt
#If you would like a CLI 
cat > file.txt
#To append rather than replace you would use two arrows
echo "This does not replace all of the text" >> file.txt

:'
Multi-line commenting is a colon followed by a single quote
To end the comment just put a single quote '


#To print out multi-line statements 
   #Note: You can use any phrase, for this example I used "lines"
cat << lines
This is line 1
This is line 2
lines
