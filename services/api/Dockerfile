# Compile stage
FROM golang:1.14 AS build-env
# Build Delve
RUN go get github.com/go-delve/delve/cmd/dlv
ADD . /app
WORKDIR /app
RUN go mod download && CGO_ENABLED=0 GOOS=linux
RUN go build -gcflags="all=-N -l" -o /server ./cmd/api/main.go

# Final stage
FROM debian:buster
WORKDIR /
COPY --from=build-env /go/bin/dlv /
COPY --from=build-env /server /
COPY --from=build-env /app/.env /.env

CMD ["/dlv", "--listen=:40000", "--headless=true", "--api-version=2", "--accept-multiclient", "exec", "/server"]