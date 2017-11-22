# session-5

## Bash Script
The current context gonna be about bash scripts

## $
$0 -> Name of current shell script

$1 , $2 , ... $10 , ... -> Positional Parameters

$# -> number of positionals parameters

$* -> all positional parameters(single string)

$@ -> all positional parameters (set of strings)

$? -> status of last executed command

$$ -> process_id of current process

## Eval
With eval it will all variables will be replaced with its content.
~~~
# set 10 b 200
# a="300 is bigger than \$$#"
# echo $a
    300 is bigger than \$$#
# eval echo $a
    300 is bigger than 200
~~~

## Relational Operators
-gt greater than
-ge greater than or equal
-lt less than
-le less than or equal
-eg equal (for numeric operations)
== or = equal (for string operations)
-ne not equal (for numeric operations)
!=  not equal (for string operations)
str1 < str2 str1 is less than str2
str1 > str2 str1 is greater than str2
-n str string length is greater than zero
-z str string length iszero

## if
~~~
read -p "Enter some variable: " var
if [ ! "$var" -lt 20]; then
    echo "wow"
else
    echo "not wow"
fi
~~~

For command we have to enclose it with [] but if we are using && or || we have to enclose it with [[]]

## touch
If we use touch command if there will be no file with this name it will be created.

If there is a file with this name the modify date will be changed to current but the file will not change anyway.

## Switch Case
~~~
case $reply in
    Y|YES) echo "Displaying all (really…) files"
            ls -a ;;
    N|NO)  echo "Display all non-hidden files..."
            ls ;;
    Q)     exit 0 ;;
    *)     echo "Invalid choice!"; exit 1 ;;
esac
~~~
```;;``` means 'break' in thif syntax of switch case

```*``` means other choices of variable that was not present in previous case choices

## Regex
We can filter command with grep using regex. For example:
~~~
seq 1000 9999 | grep .2.2
~~~

To see if first letter and last letter are equal we can use this command
~~~
seq 10000 99999 | grep -E "([1-9])...\1" | more
~~~