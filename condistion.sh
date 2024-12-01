#! /usr/bin/bash

# read -p "Enter a number: " number
# if [ $number -gt 10 ]
# then
#     echo "The number is greater than 10"
# else
#     echo "The number is not greater than 10"
# fi

# read -p "Your Age: " age
# if [ $age -gt 18 ] && [ $age -lt 30 ];
# then
#     echo "You are a young adult"
# elif [ $age -gt 30 ] && [ $age -lt 40 ];
# then
#     echo "You are an adult"
# else
#     echo "You are a senior"
# fi  

# read -p "Marks: " marks
# if [[ $marks -gt 33  && $marks -lt 100 ]]; then
#     echo "You are pass"
# elif [[ $marks -lt 33 ]]; then
#     echo "You are fail"
# else
#     echo "Invalid marks"
# fi

if [ -d devops ]; then
    echo "Directory exists"
else
    echo "Directory does not exist"
fi

if [ -f condistion.sh ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

if [ -e condistion ]; then
    echo "File exists"
else
    echo "File does not exist"
fi