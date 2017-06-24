FROM node:boron-alpine

RUN npm install serve -g

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY build /usr/src/app

EXPOSE 5000

CMD [ "serve" ]

