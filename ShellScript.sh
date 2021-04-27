#! /bin/bash

#################################################################
#                         Basic echo                            #
#################################################################

echo "Hello World"
echo our shell name is $BASH
echo our shell version is $BASH_VERSION
echo our home directory is $HOME
echo our current working directory is $PWD
echo
name=balebom
echo Hello $name

#################################################################
#                    Read value from keyboard                   #
#################################################################

echo "Enter names: "
read name1 name2 name3
echo "Hello: $name1 $name2 $name3"
#
# flag -p allow not enter new line
echo "Enter another name: "
read -p "username: " user_var
echo "Hello $user_var"
#
# flag -sp allow hidden password away
read -sp "password: " pass_var
echo
echo "password: $pass_var"
#
# flag -a save variable names as an array
echo "Enter names: "
read -a names
echo "Names: ${names[0]}, ${names[1]}, ${names[2]}"
#
echo "Enter name: "
read
echo "Name: $REPLY"

#################################################################
#            Passed value directly in shell command             #
#################################################################

echo $1 $2 $3 '> echo $1 $2 $3'
args=("$@")
#
echo ${args[0]} ${args[1]} ${args[2]}
echo $@
# 3 commands above just the same
# ./Create.sh Balebom Tim Cook 
# >> Balebom Tim Cook
#
echo $#
# this should return 3, because we passed 3 arguments 

#################################################################
#                     If else statement                         #
#################################################################

count=10
if [ $count == 10 ] # if (( $count == 10 ))
then
    echo "condition is true"
fi
#
word=abc
if [ $word == "abc" ]
then
    echo "condition is true"
fi
