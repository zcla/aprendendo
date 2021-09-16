# https://hub.docker.com/_/nginx (1.21.1-alpine)
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./config/nginx.conf /etc/nginx/nginx.conf

COPY ./html/ /usr/share/nginx/html
