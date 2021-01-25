#!/bin/bash
# the '#!' above is called a 'shebang' 
# and is used to tell the operating system which interpreter
# to use to parse the rest of the given file.

# -- Comments -- #
# chmod +x script.sh to add file permission 'execute' to 'script.sh'.
# chmod +rwx script.sh to add all file permission to 'script.sh'
# chmod -rwx . to remove all file permissions from the current directory.
# Permissions Modifiers: 
# +rxw(Adds all permsissions), +r (Add read), +w (Add Write), +x (Add Execute)
# -rxw (Removes all permssions), -r, -w, -x to remove specific permissions (If ever needed)
# Can do any combination of the r,w,x to add to & delete from files.

# Print in terminal
echo Hello

# Echo/Get the bash interpreter's directory
which bash
# Echo/Get the python interpreter's directory
which python
# Echo/GET the python3 interpreter's directory
which python3
# Echo/GET the nodejs interpreter's directory
which node
# etc.....

# Variables:
# Note: Uppercase by convention (can also allow lowercase, but not good practise)
# Letters,numbers,underscores
NAME="Edward"
# Embedding variables in strings:
echo "My Name is $NAME"
# Can also embed with the follwing syntax:
echo "My Name is ${NAME}"

# USER INPUT
read -p "Enter your age: " AGE
echo "You are $AGE years old."

# SIMPLE IF STATEMENT:
if [[ "$AGE" == "20" ]]
then
  echo "Is 20 y/o"
# Else if (elif)
elif [[ "$AGE" == "80" ]]
then
  echo "is 80 y/o"
else
  echo "Not 20 y/o or 80 y/o"
fi # Endif

# Comparison operators

read -p "Number 1: " NUM1 
read -p "Number 2: " NUM2

if [[ "$NUM1" -gt "$NUM2" ]]
then
  echo "NUM1 > NUM2"
elif [[ "$NUM1" -eq "$NUM2" ]]
then
  echo "NUM1 = NUM2"
elif [[ "$NUM1" -lt "$NUM2" ]]
then
  echo "NUM1 < NUM2"
fi
### All Comparison Operators ###
# val1 -eq val2 => Return true if val1 = val2
# val1 -ne val2 => Return true if val1 != val2
# val1 -gt val2 => Return true if val1 > val2
# val1 -lt val2 => Return true if val1 < val2
# val1 -ge val2 => Return true if val1 >= val2
# val1 -le val2 => Return true if val1 <= val2

FILE="text.txt"
if [[ -f "$FILE" ]]
# Runs when there is a file called 'text.txt'
then
  echo "$FILE is a file"
elif [[ -e "$FILE" ]]
# Runs when there is anything called 'text.txt'
then
  echo "$FILE exists"
else
  echo "$FILE is NOT a file"
fi

# CASE STATEMENTS:
read -p "Are you 21 or over? Y/N" ANSWER
# Works the same as a switch statement
case "$ANSWER" in
# Case #1 (Pattern matches for 'y' or 'Y' or 'yes','YES', 'yEs', 'YeS' etc...)
  [yY] | [yY][eE][sS])
    echo "You can have a beer :)"
    ;;
# Case #2
  [nN] | [nN][oO])
    echo "You are not old enough to drink!"
    ;;
  *)
  # Default Case (If neight above is run)
  echo "Please enter y/yes or n/no"
  ;;
esac

# Simple for loops:
NAMES="Brad Kevin Alice Mark"
# In statement seperates with space
for NAME in $NAMES
  do
    echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#   do
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE
# done

# WHILE LOOP -> READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-1.txt"

# FUNCTIONS
function sayHello() {
  echo "Hello World"
}
sayHello

# Function with params
function greet() {
  echo "Hello, I am $1 and I am $2"
}
# Calling
greet "Edward" "20"

# CREATE FOLDER 'hello' AND WRITE TO A FILE 'world.txt'
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"