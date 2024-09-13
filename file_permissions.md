# Experiment 8

1.
guest-1ti3gf@admin123-VirtualBox:~$ touch new.sh
guest-1ti3gf@admin123-VirtualBox:~$ chmod u+x new.sh
guest-1ti3gf@admin123-VirtualBox:~$ ls -l new.sh
	-rwxrw-r-- 1 guest-1ti3gf guest-1ti3gf 0 Sep  6 15:37 new.sh

2.
guest-1ti3gf@admin123-VirtualBox:~$ useradd -D
GROUP=100
HOME=/home
INACTIVE=-1
EXPIRE=
SHELL=/bin/sh
SKEL=/etc/skel
CREATE_MAIL_SPOOL=no

guest-1ti3gf@admin123-VirtualBox:~$ useradd -e 6/9/24 issac

guest-1ti3gf@admin123-VirtualBox:~$ useradd -c "new user" -p admin issac

3.
guest-1ti3gf@admin123-VirtualBox:~$ userdel issac
	userdel: user 'issac' does not exist

4.
guest-1ti3gf@admin123-VirtualBox:~$ usermod -l lab25 guest-1ti3gf

5.
guest-1ti3gf@admin123-VirtualBox:~$ passwd
Changing password for guest-1ti3gf.
(current) UNIX password: 

6.
guest-1ti3gf@admin123-VirtualBox:~$ groupadd newgroup

guest-1ti3gf@admin123-VirtualBox:~$ usermod -G shared guest

7.
guest-1ti3gf@admin123-VirtualBox:~$ groupmod -n adminbrohter guest-1ti3gf
8.
guest-1ti3gf@admin123-VirtualBox:~$ umask 777
guest-1ti3gf@admin123-VirtualBox:~$ umask
0777

