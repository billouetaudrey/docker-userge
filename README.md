# docker-userge

First clone this git and cd docker-userge

Then, edit config.env (make it)

Second, install docker with " sh setup-docker.sh " ( I don't try yet )

then when done, just do : 

sudo docker-compose up -d


OR 

Simply run "sh full_setup_userge.sh"
and follow

Small YT tuto : https://www.youtube.com/watch?v=WiHd-WigK4c

I suggest to do that for not using sudo

sudo usermod -aG docker ${USER}

su - ${USER}

It will add your user to docker group
