# sed
**sed** - stream editor
 - reads one line at a time from input
 - matches it with commands supplied
 - changes stream as specified
 - output into STDOUT (doesn't make changes in the file)
 
 this makes sed
 - faster since it takes only one pass through the data stream
 
 **syntax:**
 	***sed** options script file*
 	
 	*options:*
 	- -e script Adds commands specified in the cript to the commands run while processing the input
 	- -f file Adds commands specified in the file to the commands run while processing the input
 	
 	example:
 	1. substitution
 	`guest-lvhfgu@admin123-VirtualBox:~$ sed -e s/autobus/bus/ spanish.txt`
	```bash
	esta es un bus
	tu eres en un bus
	el bus esta aqui
	el bus esta my bonito
	```
	`guest-lvhfgu@admin123-VirtualBox:~$ echo "El nina is muy bonito" | sed 's/bonito/fea/'` #getting from STDIN
	```bash
	El nina is muy fea
	```
	
	`guest-lvhfgu@admin123-VirtualBox:~$ sed -e "s/autobus/bus/; s/my/muy/" spanish.txt`
	```bash
	esta es un bus
	tu eres en un bus
	el bus esta aqui
	el bus esta muy bonito
	```

	`guest-lvhfgu@admin123-VirtualBox:~/Linux-Lab-Exercises$ sed -e "s/bonito/fea/" spanish.txt`
	```bash
	esta es un autobus
	tu eres en un autobus
	el autobus esta aqui
	el autobus esta my fea
	la nina is mu feay
	```
	
# gawk
provides a separate programming language instead of just editor commands. you can do:
	- define variables
	- arithmetic and string ops
	- loops, and conditionals
	- formatted reports
	
**syntax:**
	***gawk** options program file*
	
	*options:*
		- -F file separator
		- -f file
		- -v var=value
		
	*examples:*
	1.
	`guest-lvhfgu@admin123-VirtualBox:~/Linux-Lab-Exercises$ gawk '{print "Hello World"}'`
	```bash
	a
	Hello World
	b
	Hello World
	c
	Hello World
	d
	Hello World
	```
	
	2.
	`guest-lvhfgu@admin123-VirtualBox:~/Linux-Lab-Exercises$ gawk '{print $1}' spanish.txt`
	```bash
	esta
	tu
	el
	el
	la
	```
	3.
	`guest-lvhfgu@admin123-VirtualBox:~/Linux-Lab-Exercises$ gawk -F: '{print $1}' /etc/passwd`
	```bash
	root
	daemon
	bin
	sys
	sync
	games
	man
	lp
	mail
	news
	uucp
	proxy
	www-data
	backup
	list
	irc
	gnats
	nobody
	```
	

	
	

 	

