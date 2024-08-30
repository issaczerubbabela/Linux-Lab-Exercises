## BRE regular expressions usage
-`guest-peahfw@admin123-VirtualBox:`~$ cat Old_Folks_at_Home.txt 
way down upon the swanny river.
far far awayyy
there's where my heart is turning ever
there's where my old folks stay
all up and down the old plantation
sadly I roam
still longing for the old lalala
far from the old folks at home...
All the worlds so sad and dreary
everywhere I roam
Oh darkies how my heart goes weary
far from the old folks at home.

-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/world/p" Old_Folks_at_Home.txt 
All the worlds so sad and dreary
-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/ear/p" Old_Folks_at_Home.txt 
there's where my heart is turning ever
All the worlds so sad and dreary
Oh darkies how my heart goes weary
-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/..eary/p" Old_Folks_at_Home.txt 
All the worlds so sad and dreary
Oh darkies how my heart goes weary
-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/[d][rw]eary/p" Old_Folks_at_Home.txt 
All the worlds so sad and dreary
-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/[rw]eary/p" Old_Folks_at_Home.txt All the worlds so sad and dreary
Oh darkies how my heart goes weary
-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/.[rw]eary/p" Old_Folks_at_Home.txt  
All the worlds so sad and dreary
Oh darkies how my heart goes weary
-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/?eary/p" Old_Folks_at_Home.txt 
-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/eary^/p" Old_Folks_at_Home.txt 
-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/eary$/p" Old_Folks_at_Home.txt 
All the worlds so sad and dreary
Oh darkies how my heart goes weary
-`guest-peahfw@admin123-VirtualBox:`~$ sed -n "/ay$/p" Old_Folks_at_Home.txt 
there's where my old folks stay

