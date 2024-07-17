# Setup with install.sh

```bash
chmod +x install.sh
./install.sh
```

#  Manuel Setup

```shell
sudo apt update
sudo apt upgrade

sudo apt install openjdk-17-jdk

mkdir minecraft_server
cd minecraft_server
```

## install server.jar

https://www.minecraft.net/en-us/download/server

```shell
wget "enter_url_here"
```
or

```shell
curl "enter_url_here"
```

## Start server

```shell
java -Xmx1024M -Xms1024M -jar server.jar nogui
```

## Port Fowarding with ngrok

```shell
wget bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz

tar -xvzf ngrok-v3-stable-linux-amd64.tgz

./ngrok authtoken “yourtoken”

./ngrok tcp 25565
 ```
 
## Port Fowarding with playit.gg // Recommended

curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install playit

## For monitoring performance 

```shell 
sudo apt install glances
glances
```
