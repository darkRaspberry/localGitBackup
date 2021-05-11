#!/bin/bash

# <!--Assigning variable block starts-->
cur=$(pwd)
# Check for 2 parameters and assigning correct variable.
if [ $# == 1 ]; then
  des=$1
elif [ $# == 2 ]; then
  des=$2
  cur=$1
else
  echo "Exit code: $?"
  exit 0
fi

# <!--Assigning variable block ends-->
# <!--Directory checking block starts-->
# Check for relative and convert in into absolute. Just checking if there is "/" in first letter.
des=$(readlink -e $des)
cur=$(readlink -e $cur)
# Check if destination dir doesn't exist.
if [ ! $(ls -d "$des" 2>/dev/null) ] 
then
  echo "Destination folder doesn't exists."
  exit 9999 # die with error code 9999
fi
# Check if current directory doesn't exist.
if [ ! $(ls -d "$cur" 2>/dev/null) ]
then
  echo "Current folder doesn't exists"
  exit 9999 # die with error code 9999
fi

# Checking for dumb errors
if [ $des==$cur ]
then
echo "You entered same directory for destination and source."
exit 9999
fi
# <!--Directory checking block ends-->
# Checking for git folder
if [ $(ls -a $cur | grep -x .git) ]; then
  echo localGitBackup Initializing
else
  echo This is not a git folder
  echo $cur 👈 is this your folder?
  exit 1
fi

echo -n "Are you sure? $cur will be backup in $des [y/n]: "
read sts
if [[ "$sts" == "y" ]]
then
  cp -r $cur $des
  echo "done"
else
  echo "Oh..Ok no problem"
fi
