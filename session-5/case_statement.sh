read -p "Enter command" reply
case $reply in
    Y|YES) echo "Displaying all (really…) files"
            ls -a ;;
    N|NO)  echo "Display all non-hidden files..."
            ls ;;
    Q)     exit 0 ;;
    *)     echo "Invalid choice!"; exit 1 ;;
esac
