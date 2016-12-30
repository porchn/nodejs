FROM node:7

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

RUN npm install nodemon -g

ADD "$PWD"/app /usr/src/app
RUN npm install


EXPOSE 3000 3030

CMD ["npm", "start"]