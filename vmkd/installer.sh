cd /home/osmc/
mkdir features
cd features
mkdir vmkd-switcher
cd vmkd-switcher
wget https://raw.githubusercontent.com/rebokdev/osmcwebbrowserexperimentalfeautures/patches/vmkd/lxde-rc-on.xml
wget https://raw.githubusercontent.com/rebokdev/osmcwebbrowserexperimentalfeautures/patches/vmkd/lxde-rc-off.xml
wget https://raw.githubusercontent.com/rebokdev/osmcwebbrowserexperimentalfeautures/patches/vmkd/vmkd-switcher.sh
chmod +x vmkd-switcher.sh
cd /home/osmc/x11-start/
mkdir old-vmkd-switcher
cp vmkd-switcher.sh /home/osmc/x11-start/backup
wait
rm vmkd-switcher.sh
cp /home/osmc/features/vmkd-switcher/vmkd-switcher.sh /home/osmc/x11-start/
