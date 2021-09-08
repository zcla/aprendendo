# https://hub.docker.com/_/golang (1.17.0-alpine3.14)
FROM golang:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache git

RUN go get github.com/sirupsen/logrus
RUN go get github.com/buaazp/fasthttprouter
RUN go get github.com/valyala/fasthttp
