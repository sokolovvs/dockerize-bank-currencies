FROM golang:1.14

RUN go get github.com/go-delve/delve/cmd/dlv
ADD . /app
WORKDIR /app
RUN go mod download && CGO_ENABLED=0 GOOS=linux
RUN go build -gcflags="all=-N -l" -o ./.bin/cron ./cmd/cron/main.go

CMD ["/go/bin/dlv", "--listen=:50000", "--headless=true", "--api-version=2", "--accept-multiclient", "exec", ".bin/cron"]
