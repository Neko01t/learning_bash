#!/bin/bash

# we can us -s for secret or password it doesn't show while typing
# like we put sudo password

read -r -p "Enter the Username : " username
read -r -sp "Enter the Password  : " password
username="${username,,}"
echo "Checking Usename and password"
[[ "$username" == "binod" ]] && echo "Username correct "
[[ "$username" != "binod" ]] && echo "Wrong Username "

[[ "$password" == "124" ]] && echo "pass correct"
[[ "$password" != "124" ]] && echo "incorrect password "

echo "Checking again with if "

if [[ "$username" == "binod" ]]; then
  echo "Username is correct"
else
  echo "incorrect username"
fi

if [[ "$password" == "124" ]]; then
  echo "Password is Correct"
else
  echo "incorrect password"
fi

if [[ "$username" == "binod" && "$password" == "124" ]]; then
  echo "Welcome Binod of ${USER^^}"
else
  echo "GO You are not Binod "
fi
