# Session 2

## UNIX

Every UNIX file system has these :
bin
etc
sbin
root
home

## bin
Executable command are here. For example:
```cat```
```chmode```
```more```
```less```
```df```
```df```
```dd```
etc

## uname
This declares information of Operation System

## which
With this command you can find out where is the root of your ideal command
~~~
which ps
~~~
```./bin/ps```

This is where the command is

## Echo variables
We can see the variables with echo:
~~~
echo $PATH
~~~~
~~~
echo $HISTORY
~~~~
~~~
echo $HISTSIZE
~~~~

## history
You can access your previous commands with ```history``` command

## PATH
This is where all command come from

We can change it by assign it directly
~~~
PATH=10
~~~
Following command can set to end of variable a string:
~~~
PATH=$PATH":/test"
echo $PATH
~ /usr/...../:test
~~~

## apropos
If we don't know the name of my command but I can describe it somehow I can use ```apropos```
~~~
apropos find
~~~
This will return every command that is attached with find

## /boot
Everything that is need for boot is in this directory

## Block devide or Characteristic device
with ```ls -l``` and first letter of first column we can find oth wheter the device is block device or character device

d example:
~~~
drwxr-xr-x
~~~

c example:
~~~
crwxr-xr-x
~~~

## /etc
Every config file is here.

# /etc/resolve.conf
In this file we can see the config

## /var
We can see everything of our log in ```/var/log``` of our file system

## virtual file or real file
For example ```/dev``` or ```/proc``` are virtual file and others that we have seen till here are real files.

## /proc
Every process is store here and we ca go to the directory of file with its id:
~~~
cd /prop/<id>
cd /prop/2880
~~~

Following command will tell you the cores info
~~~
cat /proc/cpuinfo
~~~

## ps
We can get the Process id with ```ps``` command

To get the format which you want:
~~~
ps -Ao pid,ppid,fname
~~~

## top
Shows all the processors

## jobs
This command will give you the id of your process
~~~
jobs -l
~~~

## bg
We can use ```ctrl```+```z``` to freeze the curret process and then we have to use ```jobs``` to get the job id and then with ```bg <jobs-id>``` we can move the process to background