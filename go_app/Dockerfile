FROM golang:1.16-alpine

ENV GO111MODULE=on

WORKDIR /app

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o go_app ./cmd

ENV HTTP_PORT=8000
EXPOSE 8000

ENTRYPOINT ["/app/go_app"]
