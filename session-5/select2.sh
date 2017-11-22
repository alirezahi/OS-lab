select FILENAME in *
do
	echo "You Picked $FILENAME ($REPLY)"
	chmod go-rwx "$FILENAME"
	echo "it is now private"
done
