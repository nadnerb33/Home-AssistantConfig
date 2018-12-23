#BUILD THIS DOCKERFILE: 
#sudo docker build -t "brendan/raspberrypi3-homeassistant" . 

FROM homeassistant/raspberrypi3-homeassistant

#install various dependencies
RUN apk add nodejs
RUN apk add npm
RUN apk add nano
RUN npm i ps4-waker -g

#removes/disables CEC to prevent conflicts with Kodi running on host OS
#RUN apk del libcec
#doesnt work...


#MIGHT HAVE TO RUN THE BELOW MANUALLY
#generate ssh key so you can login to host system
#this creates and then copies a file to /config/id_rsa.pub
#RUN yes y |ssh-keygen -q -t rsa -N '' >/dev/null
RUN ssh-keygen -t rsa -N "" -f /root/.ssh/id_rsa
RUN cp /root/.ssh/id_rsa.pub /config/

#the contents should now be visible to OSMC and can be appended to /home/osmc/.ssh/authorized_keys
#to do this, on host run, then delete:
#sudo cat /home/osmc/homeassistant/id_rsa.pub >> /home/osmc/.ssh/authorized_keys
#rm /home/osmc/homeassistant/id_rsa.pub