FROM node
RUN apt update && apt upgrade -y && apt install -y libasound2-dev
RUN mkdir /usr/src/relay
COPY relay /usr/src/relay/
RUN cd /usr/src/relay && npm install
