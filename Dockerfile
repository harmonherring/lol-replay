FROM golang:1.18-alpine
RUN apk add --no-cache git
RUN go install github.com/harmonherring/lol-replay/pkgserver@latest
RUN mkdir /lol-replay
VOLUME /lol-replay
CMD /go/bin/server /lol-replay/pkgconfig.json
EXPOSE 9001
