#!/bin/bash

read -p "Enter Username: " Username

User_ID=$(id -u "$Username")
Group=$(id -Gn "$Username")

echo "User ID for $Username: $User_ID"
echo "Groups for $Username: $Group" 
