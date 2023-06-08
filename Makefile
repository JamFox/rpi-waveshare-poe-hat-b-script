all: install

install:
	curl -s -L https://raw.githubusercontent.com/JamFox/rpi-waveshare-poe-hat-b-script/main/install.sh | bash

uninstall:
	sudo systemctl disable poe-hat.service
	sudo systemctl stop poe-hat.service
	rm -rf ~/.poe-hat