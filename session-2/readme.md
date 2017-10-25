# iNode
Every file has an inode which all inodes are stored in a file in file system and we can find any file by its inode.
To find out the inode of a file or folder we can use the command  ```ls -lid``` or ```ls -li```

Every line of command is a prompt

With this command you can point to a 
```ln <file-name.txt> <new-name-file>```

```find <where> <circumestances>```
-name -size

```cd``` with any sequence means go to the home directory

We can get files or folders that have been modified from a time to another time 

```grep <name-we-require> <directory>```


Word Count with the command of ```wc``` is a command that count the newline , word, byte count
``` cat /etc/passwd | grep login | wc```

Why every password differ in evey computer?
Because in the first of the line it adds a salt that differ for every computer.


The following command separate every line and shows its first column
```sudo <file-name> | cut -d: -f1```

The following command separae every line and select the columns that we declare
```sudo <file-name> | cut -c 1-5```

You can sort the list by```sort``` and unique the file with ```uniq -c ``` (-c declares the number of repeat) command
```sudo <file-name> | cut -c 1-5 | sort | uniq -c```


To sort by for example the n-th column we have to use this command :
```sudo <file-name> | cut -c 1-5 | sort | uniq -c | sort -k2```

```|``` is pipe command that means pass the last result to the next process

```for``` and ```sleep``` command example:
```for i in {1..10}; do echo $i; sleep 1;done```


```at``` command, it will do command with you schedule:
```at now +1 minute```
```ls```


```at now 

Minute|Hours|dayOfMonth|month|dayOfWeek|cmd
```crontab -e 0 1 1 * * echo 'hello'```
```crontab -e */2 * * * echo 'hello'``` It will echo every 2 minutes

to test all pings(-c1 means test every ip only once):
```for i in {1..254}; do ping -c1 91.98.33.$i &/ ;done```


```&``` means run the current app in the background


The following will ping every ip that we want(```#!bin/bash``` means that this code is written in bash. we can use it for python or other languages too)
```#!bin/bash
for i in {1..254}
do
ping -c 91.98.93.$i | grep ttl &
done
````

```chmod +x ipscan.sh```
./ipscan.sh


Following command will get the status if last process 
```echo $?```

If command has more than one parameter we can reach status of each with $0, $1 ... $<some-number>

./$0 | ./$0&