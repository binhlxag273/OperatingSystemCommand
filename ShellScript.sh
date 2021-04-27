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
if [ $count -gt 9 ] # if (( $count == 10 ))
then
    echo "condition is true"
fi

word=a
if [[ $word == 'b' ]]
then
    echo "condition b is true"
elif [[ $word == 'a' ]]
then
    echo "condition a is true"
else
    echo "condition is false"
fi

#################################################################
#                     File test operators                       #
#################################################################

# \c and -e to tell the shell that end of echo will not enter new line
echo -e "Enter the name of the file: \c"
read file_name
# -e check if $file_name is exist
# -f check if $file_name is exist and whether it is a regular file
# touch test.txt -> this is a regular file
# -d check if $folder_name is exist
# -b check if block special file is exist (videos, image, music)
# -c check if character special file is exist
# -s check if file is empty
if [ -e $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi
#
if [ -f $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
#
mkdir dir
if [ -d $folder_name ]
then
    echo "$folder_name found"
else
    echo "$folder_name not found"


#################################################################
#                Append output to text file                     #
#################################################################

echo -e "Enter the name of the file: \c"
read file_name
if [ -e $file_name ]
then
    if [ -w $file_name ]    # -w check if $file_name has write permission
    then
        echo "Type some text data. To quit press ctrl + d."
        cat >> $file_name
    else
        echo "The file do not have write permission."
    fi
else
    echo "$file_name does not exist."
fi

#################################################################
#                      Logical AND operator                     #
#################################################################

age=25
if [ $age -gt 18 ] && [ $age -lt 30 ]
then
    echo "valid age"
else
    echo "age not valid"
fi
# this command below is equal to above
if [ $age -gt 18 -a $age -lt 30 ]
then
    echo "valid age"
else
    echo "age not valid"
fi
# or
if [[ $age -gt 18 && $age -lt 30 ]]
...

#################################################################
#                      Logical OR operator                      #
#################################################################

age=25
if [ $age -gt 18 ] || [ $age -lt 30 ]
then
    echo "valid age"
else
    echo "age not valid"
fi
# this command below is equal to above
if [ $age -gt 18 -o $age -lt 30 ]
then
    echo "valid age"
else
    echo "age not valid"
fi
# or
if [[ $age -gt 18 || $age -lt 30 ]]
...

#################################################################
#                     Arithmetic operations                     #
#################################################################

num1=20
num2=30
echo $((num1 + num2))
echo $((num1 - num2))
echo $((num1 * num2))
echo $((num1 / num2))
echo $((num1 % num2))
# or
echo $(expr $num1 + $num2)
echo $(expr $num1 - $num2)
echo $(expr $num1 \* $num2)
echo $(expr $num1 / $num2)
echo $(expr $num1 % $num2)

#################################################################
#                       The case statement                      #
#################################################################

vehicle=$1
case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100 dollar"
        echo "haha" ;;
    "van" )
        echo "Rent of $vehicle is 80 dollar" ;;
    "bicycle" )
        echo "Rent of $vehicle is 5 dollar" ;;
    "truck" )
        echo "Rent of $vehicle is 150 dollar" ;;
    * )
        echo "Unknown vehicle" ;;
esac

#################################################################
#                       The case statement                      #
#################################################################

echo -e "Enter some character : \c"
read value
case $value in
    [a-z] )
        echo "user entered $value a to z" ;;
    [A-Z] )
        echo "user entered $value A to Z" ;;
    [0-9] )
        echo "user entered $value 0 to 9" ;;
    ? )
        echo "user entered $value special character" ;;
    * )
        echo "unknown input" ;;
esac

#################################################################
#                             Array                             #
#################################################################

os=('ubuntu' 'windows' 'kali')
os[3]='macos'

unset os[2]
echo "${os[@]}"
echo "${os[0]}"
echo "${!os[@]}"
echo "${#os[@]}"

string=dsasdakdm
echo "${string[@]}"
echo "${string[0]}"

#################################################################
#                          While loop                           #
#################################################################

n=1
while [ $n -le 3 ]
do
    echo $n
    n=$(( n + 1 ))
    sleep 1
    gnome-terminal &
done

Read file use While loop

while read p
do
    echo $p
done < Create.sh

#################################################################
#                          While loop                           #
#################################################################

for i in 1 2 3 4 5
do
    echo $i
done
#
for i in {1..10}
do
    echo $i
done
#
for i in {1..10..2}
do
    echo $i
done
#
for (( i=0; i<5; i++ ))
do
    echo $i
done
#
for command in ls pwd date
do
    echo "----------------$command----------------"
    $command
done

for item in *
do
    if [ -d $item ]
    then
        echo $item
    fi
done

#################################################################
#                          Select loop                          #
#################################################################

select name in mark john tom ben
do
    case $name in 
    mark )
        echo "mark selected" 
        ;;
    john )
        echo "john selected" 
        ;;
    tom )
        echo "tom selected" 
        ;;
    ben )
        echo "ben selected" 
        ;;
    * )
        echo "Error, please provide no between 1 to 4"
    esac
done

#################################################################
#                    Break and continue                         #
#################################################################

for (( i=1; i<10; i++ ))
do
    if [ $i -eq 5 -o $i -eq 6 ]
    then
        continue
    fi
    echo "$i"
done
#
for (( i=1; i<10; i++ ))
do
    if [ $i -gt 5 ]
    then
        break
    fi
    echo "$i"
done

#################################################################
#                            Function                           #
#################################################################

function print()
{
    echo $1
}
#
quit()
{
    exit
}
#
print Hello
print World
print again
#
echo "foo"
quit
# Local variable
function print()
{
    local name=$1
    echo "the name is $name"
}
name="Tom"
echo "the name is $name : Before"
print Max
echo "the name is $name : After"

# Function example
usage()
{
    echo "You need to provide an argument: "
    echo "usage : $0 file_name"
}
is_file_exist()
{
    local file=$1
    [[ -f $file ]] && return 0 || return 1
}

[[ $# -eq 0 ]] && usage

if ( is_file_exist $1 )
then
    echo "Find found"
else
    echo "Find not found"
fi

#################################################################
#                            Readonly                           #
#################################################################
var=31
readonly var # readonly just like const
var=50 # error
echo "var => $var"

hello()
{
    echo "Hello World"
}

readonly -f hello

readonly -p # show all variable in machine

