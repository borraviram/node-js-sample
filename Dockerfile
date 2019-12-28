FROM node:10.18.0-alpine3.9

EXPOSE 5000

RUN apk add --update tini

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPy package.json package.json

RUN npm install

COPY . .

#C<F10>MD [ "tini", "--", "node", "./bin/www" ]
CMD npm start
