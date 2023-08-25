FROM node:16-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
RUN npm install express
RUN npm install path
RUN npm install nodemon --save-dev

COPY . .

CMD [ "npm" , "start" ]