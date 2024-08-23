#sed
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
	

 	

