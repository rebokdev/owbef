cd /tmp
mkdir ords
cd ords
wget https://raw.githubusercontent.com/rebokdev/owbef/non-patches/ords/ordis.sh
wait
chmod +x ordis.sh
bash ordis.sh
wait
cd /home/osmc/
mkdir features
cd features
mkdir ords
mkdir vmkd-switcher
cd vmkd-switcher
wget https://raw.githubusercontent.com/rebokdev/owbef/patches/vmkd/lxde-rc-on.xml
wait
wget https://raw.githubusercontent.com/rebokdev/owbef/patches/vmkd/lxde-rc-off.xml
wait
wget https://raw.githubusercontent.com/rebokdev/owbef/patches/vmkd/vmkd-switcher.sh
wait
chmod +x vmkd-switcher.sh
cd /home/osmc/x11-start/
mkdir old-vmkd-switcher
cp vmkd-switcher.sh /home/osmc/x11-start/backup
wait
rm vmkd-switcher.sh
cp /home/osmc/features/vmkd-switcher/vmkd-switcher.sh /home/osmc/x11-start/
