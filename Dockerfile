FROM mhart/alpine-node:latest

RUN mkdir temp/ 

COPY package.json temp/package.json

RUN cd temp/ && npm install

RUN mkdir workspace && cp temp/node_modules workspace/

WORKDIR workspace/

ADD . workspace/

EXPOSE 3000

CMD "node, server.js"
