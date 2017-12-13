# File System

## Controller
* SCSI
* EDA
* SATA

## Make File with Specific size
Following code will create 200 MB file.

```dd if=/dev/zero of=/tmp/mdisk.txt bs=2048 count=100000``` 

bs -> block size

We use 100000 of 2048 kb and it results almost 200 MB.

## Loop Back
It's a virtual network card.

## Partition
~~~
$ dd if=/dev/zero of=/tmp/mdisk.txt bs=2048 count=100000
$ mkfs.ext3 /tmp/mdisk.txt
$ sudo dlosetup /dev/loop0 /tmp/mdisk.txt
$ mkdir /home/lab2/mypartition
$ sudo mount /dev/loop0 /home/lab2/mypartition
~~~

```/dev/zero``` actually is a program.