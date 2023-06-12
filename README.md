# Raspberry Pi Waveshare PoE HAT (B) install script

Original: https://gist.github.com/CharlesGodwin/adda3532c070f6f6c735927a5d6e8555

Waveshare documentation: https://www.waveshare.com/wiki/PoE_HAT_(B)#Set_the_Fan_Startup_Temperature

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
