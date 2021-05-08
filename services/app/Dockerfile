FROM golang:1.14

WORKDIR /app

COPY . /app

RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o ./.bin ./cmd/app/main.go
ENTRYPOINT .bin/main