# Session 3

#python

First of a python file we can declare the source of python file with the #! <source-of-python>

# OS in python
We can write process programms in Python by importing os

~~~
#! /usr/bin/python
import os
import time

pid = os.fork()

if pid is 0:
    print('this is a child')
    time.sleep(50)
else:
    print('this is a parent')
    time.sleep(50)
~~~

With the command ```kill -l``` we can see list of signals and use them.
                                
we can get the pid of current process with the ```echo $$``` in bash file.

There are three type access in linux. First one is for the user.Second one is for the group and the last one is for the others. The number that comes after these are the files that are showing to this file(Mostly it is 1).

We can change owner with the command ```chown```

```umask``` will give us a 3 bit number that if we minus it from 777 it will return the number of access of directory and if we minus it from 666 it will return the access number of file.

With the ```unmask``` command we can change the access and mask number of each file or directory.

## Date
Accessing to the date is possible with ```date```

We can format date with ```date +"%y-%m-%d"```.It will return something like this:
~~~17-11-07~~~

## Assign
Assigning an object to another is possible like this:
~~~ 
some_date=`date +"%y-%m-%d"`
~~~


## Bash Programming
~~~
#! /bin/bash
for i in $( ls ); do
    echo item: $i
done

while :
    something
~~~


## File or Directory
To find out the type of current thing we can use ```test -f <name-of-file>``` for testing if this is file.

For the directory type we can use ```test -d <name-of-file>```.

```test -e <name-of-file>``` checks whether the file exists or not.

```test -r <name-of-file>``` checks whether the file is readable.

```test -w <name-of-file>``` checks whether the file can be written or nott.

```test -x <name-of-file>``` checks whether the file is executable ro not.

```test -s <name-of-file>``` checks whether the file exists and size is not zero.

0 means True and 1 means False!


## cd
As before was mentioned we can go to the root directory with ```cd ~``` or ```cd```.
We can see all files (even hidden ones) with the ls -la command.

## Mathematic
To do math things in bash we can use the $ syntax like this:
~~~
a=10
a=$(($a+10))
echo $a
20
~~~

## Statuses of Process are available with These:

```ps```

```/proc```

## Translate
```tr``` will translate for us.

For example with ```ls /etx | tr 'a-z' 'A-Z'``` it will convert any small letter to capital letter.

## 
We can change the sort of ls with ```-r```
~~~ 
ls -r /etc
~~~

Following will show inside of files too.
~~~ 
ls -R /etc
~~~

```tee``` will do more than one process for us. Like the following:
~~~
ls -R /etc | tee ls.txt | more
~~~
It will print in ls.txt and it will show with ```more```
