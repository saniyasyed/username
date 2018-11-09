#! /bin/bash
# username.sh
echo "The characters you can use in your username are:"
echo "lowercase letters"
echo "digits"
echo "and the underscore character"
echo "Your username must start with a lowercase letter."
echo "Your username must be less than 12 characters but more than 3."
# username.sh
echo "Enter a username: "
read username
while echo $username | egrep -v "^[a-z][a-z_0-9]{2,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - at least 3 but less than 12 characters!"
	echo "Enter a username: "
	read username
done
echo "Thank you"

