FROM golang:1.15
WORKDIR /app
COPY . .
RUN GOOS=linux go build -ldflags="-s -w"

EXPOSE 3090

CMD ["./app"]
