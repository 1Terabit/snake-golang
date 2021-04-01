FROM golang:alpine
ENV LANG en_US.UTF-8

COPY . /go/src/github.com/anthwam/snake-golang/snake
WORKDIR /go/src/github.com/anthwam/snake-golang/snake

RUN apk add --no-cache git
RUN go get ./
RUN go build -o ./_bin/snake-golang

ENTRYPOINT "./_bin/snake-golang"
