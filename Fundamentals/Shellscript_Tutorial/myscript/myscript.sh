#! /usr/bin/bash

# before executing a newly created shell script make sure to use chmod u+x exambple.sh to allow access for execution
# ECHO COMMAND 
echo Hello World!

# VARIABLES
# Uppercase by conventionm including letters, numbers, underscores
NAME="Joonha"
echo "My name is ${Name}"

# USER INPUT
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you"

# ELSE IF STATEMENT
if [ "$NAME" == "Joonha" ]
then 
    echo "Your name is Joonha"
elif [ "$NAME" == "Dongha" ]
then
    echo "Your name is Dongha"
else 
    echo "Yout name is not Joonha"
fi

# COMPARISON
NUM1=3
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else 
    echo "$NUM1 is less than $NUM2"
fi

############
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2 
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
############

# FILE CONDITIONS
FILE="test.txt"
if [ -f "$FILE" ]
then 
    echo "$FILE is a file"
else 
    echo "$FILE is not a file"
fi

############
# -d file True if the file is a directory 
# -e file True if the file exists (note that this is not particularly protable, thus -f is generaly used)
# -f file True if the provided strin is a file
# -g file True if the group id is set on a file 
# -r file True if the file is readable 
# -s file True if the file has a non-zero size 
# -u      True if the user id is set on a file 
# -w      True if the file is writable 
# -x      True if the file is an executable 
############

#CASE STATEMENT
read -p "ARE YOU 21 OR OVER? y/n " ANSWER
case "$ANSWER" in
    [yY] | [yY][eE][sS])
     echo "You can have beer"
    ;;
    [nN] | [nN][oO])
     echo "Sorry no drinking"
    ;;
    *)
     echo "Please enter y/yes or n/no"
    ;;
esac


# SIMPLE FOR LOOP
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
    do 
        echo "Hello $NAME"
done

# A FOR LOOP TO RENAME FILES 
#FILES=$(ls *.txt)
#NEW="new"

#for FILE in $FILES
    #do 
        #echo "Renaming $FILE to new-$FILE"
        #mv $FILE $NEW-$FILE
#done

# A selection to delete all txt
read -p "do you wish to delete all txt files? y/n " ANSWER
case "$ANSWER" in
    [yY] | [yY][eE][sS])
     echo "deleted all txt files"
    FILES=$(ls *.txt)
    NEW="new"

    for FILE in $FILES
        do 
            echo "deleting $FILE"
            rm $FILE 
    done
    ;;
    [nN] | [nN][oO])
     echo "did not delee any files"
    ;;
    *)
     echo "Please enter y/yes or n/no"
    ;;
esac

#  WHILE LOOP - READ THROUGH A FILE LINE BY LINE
#LINE=1
#while read -r CURRENT_LINE
    #do
        #echo "$LINE: $CURRENT_LINE"
        #((LINE++))
#done < "./test.txt"

# FUNCTION
function sayHello() {
    echo "Hello World I am $1 and I am $2"
}

sayHello "Joonha" "21"

# CREATE FOLDER AND WRITE TO A FILE
mkdir Hello
#touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"