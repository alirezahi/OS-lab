# session-7

## Logic Volume Manager
~~~
cd /home/lab2
mkdir diskspace
cd diskspace

# Following commands will create three parition
dd if=/dev/zero of=./disk1 bs=2048 count=500000
dd if=/dev/zero of=./disk2 bs=2048 count=700000
dd if=/dev/zero of=./disk3 bs=2048 count=400000

#Following commands will merge these partition
sudo losetup /dev/loop1 ./disk1
sudo losetup /dev/loop2 ./disk2
sudo losetup /dev/loop3 ./disk3

#Follwing command will 
sudo pvcreate /dev/loop1 /dev/loop2 /dev/loop3
sudo pvdisplay

# Following will create space
sudo vgcreate myvg /dev/loop1 /dev/loop2 /dev/loop3
sudo vgdisplay

#Following will create lv space
sudo lvcreate -n mypart -L 800M myvg

sudo mount /dev/myvg/mypart /home/lab2/newpart
~~~

## Raid
Raid 0 -> strips the data

Like this:

First DB -> 1,3,5,7,...

Second DB -> 2,4,6,8,...

Raid 1 -> duplicates the data

Like this:

First DB -> 1,2,3,4,5,....

Second DB -> 1,2,3,4,5,....

Raid 1+0 -> duplicates the data and then strips it

Raid 0+1 -> strips the data and then duplicates it

Raid 5 -> stripes the data and uses the last one to recover the loss data