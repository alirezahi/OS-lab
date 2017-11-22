if [ $# -lt 1 ];then
	echo "Usage: filetest filename"
	exit 1
fi
if [[ ! -f "$1" || ! -r "$1" || ! -w "$1" ]]
then
	echo "file $1 is not accessible"
	exit 1
fi
