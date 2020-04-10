#!/bin/bash

choices=" Shutdown\n Lock\n Suspend\n Restart\n Logout\n Cancel"
var=$(echo -e $choices | dmenu -i -p "Exit menu: " -sb "#FF3855") 

case $var in
    ' Shutdown') 
	  systemctl poweroff;;

    ' Lock')
      "blurlock";;

    ' Restart')
      i3exit reboot;;

    ' Logout')
      i3exit logout;;
      
    ' Suspend')
      i3exit suspend;;
    
	' Cancel')
      exit 0;;
esac
