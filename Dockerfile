FROM golang:alpine as builder

WORKDIR /app

COPY . ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o fc-rocks ./cmd

FROM scratch
COPY --from=builder /app/fc-rocks .

ENTRYPOINT ["./fc-rocks"]
