# STEP 01
# Download Golang image using Alpine and build fullcycle.go into an executable
FROM golang:1.21.4-alpine3.18 as builder
WORKDIR /app
COPY . .
RUN go mod init fullcycle
RUN go build -o fullcycle

# STEP 02
# Use Scratch (empty) image just to execute our executable file.
FROM scratch
WORKDIR /app
# Copy our static executable.
COPY --from=builder /app/fullcycle /app
ENTRYPOINT ["./fullcycle"]