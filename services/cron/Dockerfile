FROM golang:1.17
ADD . /app
WORKDIR /app
RUN go mod download && CGO_ENABLED=0 GOOS=linux
RUN go build -gcflags="all=-N -l" -o .bin/cron ./cmd/cron/main.go
CMD [".bin/cron"]
