FROM node:4.6

RUN mkdir /whybchain
ADD package.json /whybchain/
ADD main.js /whybchain/

RUN cd /whybchain && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /whybchain && npm install && PEERS=$PEERS npm start
