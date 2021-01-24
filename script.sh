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

# Variables:
# Note: Uppercase by convention (can also allow lowercase, but not good practise)
# Letters,numbers,underscores
NAME="Edward"
# Embedding variables in strings:
echo "My Name is $NAME"
# Can also embed with the follwing syntax:
echo "My Name is ${NAME}"

