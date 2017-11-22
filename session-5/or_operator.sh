read -p "Enter 1: " milad1
read -p "Enter 2: " milad2
if [[ "$milad1" -gt 150 || "$milad2" -gt 50 ]]
	then
	echo "bonus"
else
	echo "not bonus"
fi
