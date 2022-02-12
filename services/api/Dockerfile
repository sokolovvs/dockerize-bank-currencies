# Compile stage
FROM golang:1.17 AS build-env
ADD . /app
WORKDIR /app
RUN go mod download && CGO_ENABLED=0 GOOS=linux
RUN go build -gcflags="all=-N -l" -o /server ./cmd/api/main.go

# Final stage
FROM debian:buster
WORKDIR /
COPY --from=build-env /server /
COPY --from=build-env /app/.env /.env

CMD ["/server"]