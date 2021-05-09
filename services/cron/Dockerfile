FROM golang:1.14 AS build

WORKDIR /app
COPY . /app

RUN go mod download && CGO_ENABLED=0 GOOS=linux go build -o ./.bin/cron ./cmd/cron/main.go

ENTRYPOINT ./.bin/cron

# TODO: To solve the next problem: "x509: certificate signed by unknown authority на Golang"

#FROM debian:buster
#
#WORKDIR /
#COPY --from=build /app/.bin/cron /cron
#COPY --from=build /app/.env /.env
#COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
#
#ENTRYPOINT /cron