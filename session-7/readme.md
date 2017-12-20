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