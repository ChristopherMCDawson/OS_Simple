#!/bin/bash
#*******************************************
#* April 07, 2021 *
#* Linux Shell Scripting II - Lab 9 *
#* *
#* Student Number - Christopher Decarie-Dawson*
#* Section number - CST8102 - 310/311*
#* myscript - Linux Shell Scripting II *
#*******************************************
choice=n
while [[ $choice != "q" ]] && [[ $choice != "Q" ]]
do
clear
echo "User and group management "
echo "Choice one of the following options"
echo "To Create a user account: Enter A "
echo "To Delete a user account: Enter B "
echo "To Change supplementary group for a user account: Enter C"
echo "To Change initial group for a user account: Enter D"
echo "To Change default login shell for a user account: Enter E"
echo "To Change account expiration date for a user account : Enter F"
echo "To Quit : Enter Q"

echo -e "Choice: \c"
read choice
echo "You Entered $choice."
sleep 3

if [ $choice = "A" ] || [ $choice = "a" ]
        then
           read -p "Enter Username: " userName
           read -p "Enter User's home directory: " homeDirectory
           read -p "Enter Default login shell: " defaultLoginShell
           useradd -d $homeDirectory -m -s $defaultLoginShell $userName
elif [ $choice = "B" ] || [ $choice = "b" ]
        then
           read -p "Enter Username: " userName
           userdel -r $userName
elif [ $choice = "C" ] || [ $choice = "c" ]
        then
           read -p "Enter Username: " userName
           read -p "Enter Supplementary group name: " groupName
           usermod -G $groupName $userName
elif [ $choice = "D" ] || [ $choice = "d" ]
        then
           read -p "Enter Username: " userName
           read -p "Enter Initial group name: " iniGroupName
           usermod -g $iniGroupName $userName
elif [ $choice = "E" ] || [ $choice = "e" ]
        then
           read -p "Enter Username: " userName
           read -p "Enter Shell name: " shellName
           usermod -s $shellName $userName
elif [ $choice = "F" ] || [ $choice = "f" ]
        then
           read -p "Enter Username: " userName
           read -p "Enter Expiration date: " exprDate
           usermod -e $exprDate $userName
elif [ $choice = "Q" ] || [ $choice = "q" ]
        then
clear
else
        echo "Invalid option is chosen"

fi
done

