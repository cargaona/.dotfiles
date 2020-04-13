#!/bin/bash

choices="Telegram\nWhatsapp\nSignal\nDiscord\nSlack\nHangouts\nJitsi\nGmail"
var=$(echo -e $choices | dmenu -i -p "Exit menu: " -sb "#85489d") 

case $var in
    'Whatsapp') 
	  exec i3-msg 'exec brave --profile-directory="Contre" --app=https://web.whatsapp.com -class "messages"';;

    'Discord')
	  exec i3-msg 'exec brave --profile-directory="Contre" --app=https://discordapp.com/app';;

    'Jitsi')
        exec brave --profile-directory="Contre" --app=https://meet.jit.si/$(zenity --entry --text="Enter call name:");;

    'Hangouts')
	  exec i3-msg 'exec brave --profile-directory="Contre" --app=https://hangouts.google.com/call';;

    'Gmail')
	  exec i3-msg 'exec brave --profile-directory="Contre" --app=https://gmail.com';;

    'Telegram')
	  exec i3-msg 'exec telegram-desktop';;

    'Signal')
	  exec i3-msg 'exec signal-desktop';;
      
    'Slack')
	  exec i3-msg 'exec slack';;
esac
