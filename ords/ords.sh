devices=$(sudo input-remapper-control --list-devices)
if echo $devices | grep OSMC; then
  echo Your remote is connected , you can chnage this action
else
  echo Remote is not connected , you can change this action
fi
