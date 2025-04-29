read -p "Enter username: "username
user_info=$(grep "^username:" /etc/passwd)
if [ -n "$user_info" ]; then
	echo "User Information:"
	echo "$user_info"
else
	echo "User $username not found."
fi
