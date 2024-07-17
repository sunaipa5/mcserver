#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install -y openjdk-17-jdk wget

mkdir minecraft_server
cd minecraft_server

# 1.21
wget https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar

java -Xmx1024M -Xms1024M -jar server.jar nogui

echo "#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA).
#Wed Jul 17 11:52:58 UTC 2024
eula=true" > eula.txt

# Install Playit
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install -y playit

echo "1. start Minecraft sever with start.sh or java -Xmx1024M -Xms1024M -jar server.jar nogui
2. Connect playit.gg
3. Enjoy!
"
