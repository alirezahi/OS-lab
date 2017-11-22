echo "Enter filename: "
read filename
if [ ! -r "$filename" ]
	then
	echo "file is not readable"
	exit 1
fi
