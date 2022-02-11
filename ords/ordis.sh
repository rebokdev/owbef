cd /tmp
mkdir osmcremotedetect
cd osmcremotedetect
curl -s https://api.github.com/repos/sezanzeb/input-remapper/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d '"' -f 4 \
| wget -qi - -P /tmp/osmcremotedetect
exec=$(basename -- *.deb)
sudo dpkg -i $exec
sudo apt --fix-broken install
sudo rm /usr/share/applications/input-remapper.desktop
sudo rm /bin/input-remapper-gtk
