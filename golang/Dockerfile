# https://hub.docker.com/_/golang (1.17.0-alpine3.14)
FROM golang:alpine as dev

WORKDIR /work/
COPY ./src/ /work/

CMD go run main.go
