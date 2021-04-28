#!/bin/bash
string='Matching Defaults entries for'
for usr in $(cut -f 1 -d : /etc/passwd);
do 
	num=$(sudo -l -U $usr)
	   if [[ $num == "$string"* ]]
	   then
		   echo $usr
	   fi
done
