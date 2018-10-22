#BUILD THIS DOCKERFILE: 
#sudo docker build -t "brendan/raspberrypi3-homeassistant" . 

FROM homeassistant/raspberrypi3-homeassistant
RUN apk add nodejs
RUN apk add npm
RUN npm i ps4-waker -g
