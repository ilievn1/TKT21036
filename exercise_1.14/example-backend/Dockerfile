# Install base-image golang 1.16
FROM golang:1.16-alpine

# Set pwd
WORKDIR /usr/src/app

# Open app port 8080
EXPOSE 8080

# Copy src code, images, etc.
COPY . .

# Set Env as requested in README.md 
ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000


# Verify artifact has compiled by running tests
RUN go test ./...

# build app
RUN go build

# Launch server
CMD ["./server"]
