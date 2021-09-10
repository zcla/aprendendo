# https://hub.docker.com/_/golang (1.17.0-alpine3.14)
FROM golang:alpine as dev

RUN apk update && apk upgrade && \
    apk add --no-cache git

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

WORKDIR /work/
COPY ./src/ /work/

CMD go run main.go
