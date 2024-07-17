#!/bin/bash

echo "Starting Update"
sudo apt update

echo "Starting Upgrade"
sudo apt upgrade -y

echo "Installing java"
sudo apt install -y openjdk-17-jdk wget

mkdir minecraft_server
cd minecraft_server

# Download server.jar
echo "Visit for server.jar files: https://www.minecraft.net/en-us/download/server "
read -p "Type Minecraft server.jar file download link: " download_link
echo "Downloading server.jar ..."
wget "$download_link" -O server.jar

# Start Server
java -Xmx1024M -Xms1024M -jar server.jar nogui

echo "#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA).
#Wed Jul 17 11:52:58 UTC 2024
eula=true" > eula.txt

cd ..

# Install Playit
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install -y playit

echo "
1. start Minecraft server with start.sh or java -Xmx1024M -Xms1024M -jar server.jar nogui
2. Connect playit.gg
3. Enjoy!
"
