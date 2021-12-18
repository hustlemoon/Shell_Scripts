# Print the 10th through 25th words (including the 10th and 25th words) in ./Hello/words You
# may take advantage of the fact that the words in this file are each on a separate line. 
cat ./Hello/words.txt | head -n 25 | tail -n 16

#print the non-hidden file/directory names contained by the current directory in revers of the normal, alphabetical order
ls -r 

#print the numner of lines in the text file myfile.txt that do not contain the string cs246 (all in lower-case)
egrep -v -c "cs246" < myfile.txt

#print the first line that ocntains the string cs246 (all in lower-case) from the text file myfile.txt 
egrep "cs246" < myfile.txt | head -n 1
egrep -m 1 "cs246" < myfile.txt

#print the number of lines in the text file myfile.txt that contain the string linux.student.cs.uwaterloo.ca, where each letter could be in either 
#upper case or lowercase.
egrep -c  "[lL][iI][nN][uU][xX]\.[sS][tT][uU][dD][eE][nN][tT]\.[cC][sS]\.[uU][wW][aA][tT][eE][rR][lL][oO][oO]\.[cC][aA]" < myfile.txt
egrep -c -i "(linux)\.(student)\.(cs)\.(uwaterloo)\.(ca)" < myfile.txt

#print the names of all (non hidden) files/directories in any subdirectory of the current directory whose names end with the lower-case .c 
#(immediate subdirectories only, not subdirectories of subdirectories) do not use find, easier way with ls using globbing pattern
ls * | egrep .c$
ls */*.c

#out of the first 20 lines of myfile.txt. how many contain at least one digit 0-9
head -n 20 myfile.txt | egrep -c [0-9]

#print the names of all (non-hidden) files/directories in the current directory whose names satrt with the lower-case letter a, contain at least one 
#lowercase b, and end with the lower-case letter .c. 
ls a*[b-b]*.c
ls a*b*.c

#print a listing, in long form, of all non-hidden entries (files, directories, etc) in the current directory that are executable by at least one of 
# owner, group, other, you may assume that you onlyneed to have the execution bit st to x, do not solve this problem with find. 
ls -l | egrep -e "^(d|r|w|s|-)+(wx|-x)"
ls -l | egrep -e "((wx | x)"