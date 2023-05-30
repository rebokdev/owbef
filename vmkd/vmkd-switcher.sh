devices=$(lsusb)
wait
if echo $devices | grep OSMC; then
  cp /home/osmc/features/vmkd-switcher/lxde-rc-on.xml /home/osmc/.config/openbox/lxde-rc.xml
  wait
  openbox --reconfigure
else
  cp /home/osmc/features/vmkd-switcher/lxde-rc-off.xml /home/osmc/.config/openbox/lxde-rc.xml
  wait
  openbox --reconfigure
fi
