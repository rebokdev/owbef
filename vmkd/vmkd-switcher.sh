#!/bin/bash
fjupp="/home/osmc/.config/openbox/lxde-rc.xml"
devices=$(sudo input-remapper-control --list-devices)

if grep -q CONROLE "$fjupp"; then
	if echo $devices | grep OSMC; then
		exit
	else
		sed '/Controlando/,/CONROLE/d' /home/osmc/.config/openbox/lxde-rc.xml > /home/osmc/.config/openbox/lxde-rc.xml.tmp ; mv /home/osmc/.config/openbox/lxde-rc.xml /home/osmc/.config/openbox/lxde-rc.xml.bak ; mv /home/osmc/.config/openbox/lxde-rc.xml.tmp /home/osmc/.config/openbox/lxde-rc.xml
		openbox --restart
		exit
	fi
else
	if grep -q CONROLE "$fjupp"; then
		f1="$(</home/osmc/x11-start/mouse.txt)"
	     	awk -vf1="$f1" '/\<\/keyboard\>/{print f1;print;next}1' /home/osmc/.config/openbox/lxde-rc.xml > /home/osmc/.config/openbox/lxde-rc.xml.tmp ; mv /home/osmc/.config/openbox/lxde-rc.xml /home/osmc/.config/openbox/lxde-rc.xml.bak ; mv /home/osmc/.config/openbox/lxde-rc.xml.tmp /home/osmc/.config/openbox/lxde-rc.xml
                openbox --restart
                exit
	else
		exit
	fi
fi
exit


