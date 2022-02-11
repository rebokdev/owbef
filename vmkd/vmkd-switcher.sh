devices=$(sudo input-remapper-control --list-devices)
wait
if echo $devices | grep OSMC; then
  rm /home/osmc/.config/openbox/lxde-rc.xml
  wait
  cp /home/osmc/features-files/vmkd/lxde-rc-on.xml /home/osmc/.config/openbox/
  wait
  cd /home/osmc/.config/openbox/
  wait
  mv lxde-rc-on.xml lxde-rc.xml
  wait
  openbox --reconfigure
else
  rm /home/osmc/.config/openbox/lxde-rc.xml
  wait
  cp /home/osmc/features-files/vmkd/lxde-rc-off.xml /home/osmc/.config/openbox/
  wait
  cd /home/osmc/.config/openbox/
  wait
  mv lxde-rc-off.xml lxde-rc.xml
  wait
  openbox --reconfigure
fi
