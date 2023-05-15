FROM python:3.8-slim
WORKDIR /usr/src/app
COPY powertagd .
COPY powertag2mqtt .
RUN chmod +x powertagd powertag2mqtt
CMD ./powertagd -d $USBPORT | ./powertag2mqtt -broker $BROKER_IP -user $USERNAME -password $PASSWORD
