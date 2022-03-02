#Installing Userge Docker
read -p "Do you want to install docker? (y/n) " RESP
if [ "$RESP" = "y" ]; then
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
fi
read -p "Do you want to install python and pip ? (y/n) " RESP
if [ "$RESP" = "y" ]; then
sudo apt-get install python3-distutils python3-dev libffi-dev libssl-dev &
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py & sudo python3 get-pip.py
fi
read -p "Do you want to install docker-compose ? (y/n) " RESP
if [ "$RESP" = "y" ]; then
sudo pip3 install docker-compose
fi
read -p "Do you want to download userge docker ? (y/n) " RESP
if [ "$RESP" = "y" ]; then
git clone https://github.com/billouetaudrey/docker-userge & cd docker-userge
fi
read -p "Do you want edit config.env ? (y/n) " RESP
if [ "$RESP" = "y" ]; then
nano config.env
fi
read -p "Last step : Do you want to install docker of userge? (y/n) " RESP
if [ "$RESP" = "y" ]; then
sudo docker-compose up -d
else
echo "Ok, Good Bye"
fi

