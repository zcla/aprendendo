FROM node:current-alpine as dev

RUN mkdir /app/
WORKDIR /app/

COPY ./src/package.json /app/package.json
RUN npm install

COPY ./src/ /app/

####################

FROM dev as prod

CMD node .
