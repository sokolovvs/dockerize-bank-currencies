FROM golang:1.14 AS build

WORKDIR /app
COPY . /app

RUN go mod download && CGO_ENABLED=0 GOOS=linux go build -o ./.bin/api ./cmd/api/main.go

FROM debian:buster

WORKDIR /
COPY --from=build /app/.bin/api /api
COPY --from=build /app/.env /.env

ENTRYPOINT /api