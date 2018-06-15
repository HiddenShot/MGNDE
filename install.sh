#!/bin/bash
sudo apt-get install sudo
sudo apt-get install curl
sudo python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/master/scripts/get-platformio.py)"
sudo platformio lib --global install 5465
sudo platformio lib --global install 891
git clone https://github.com/hak5darren/USB-Rubber-Ducky.git
sudo chmod +x mg.py
echo -e '\e[1;31mNow put ./mg.py on the terminal and enjoy!\e[1m'
echo -e '\e[1;34mWith love: ~HS~\e[1m'