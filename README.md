# Raspberry Pi Waveshare PoE HAT (B) install script

This script has been tested on **Raspberry Pi OS**, Buster (Legacy) and Bullseye only.

Fan control works with FAN switch in P0 position.

Will clean up downloads after install.

On second run, it will delete and reinstall again.

On successful run systemd service named `poe-hat.service` will run and start on every boot.

## Install

```bash
curl -s -L https://raw.githubusercontent.com/JamFox/rpi-waveshare-poe-hat-b-script/main/install.sh | bash
```

## Uninstall

```bash	
sudo systemctl disable poe-hat.service
sudo systemctl stop poe-hat.service
rm -rf ~/.poe-hat
```
