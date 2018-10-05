FROM node:8
RUN apt update && apt upgrade -y
RUN mkdir /usr/src/relay
COPY assistant-relay /usr/src/relay/
RUN cd /usr/src/relay && npm install
EXPOSE 3000
CMD [ “npm”, “run”, “start” ]
