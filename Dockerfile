# Build Stage
FROM golang
#set environment variables 
ENV CGO_ENABLED=0 GOOS=linux

WORKDIR /opt

# Copy go.mod and go.sum separately for better caching
COPY go.mod  .
RUN go mod download 

# Copy source files
COPY . .

# Build the Go application
RUN go build -v -o app


#Final Stage 
FROM debian:bullseye-slim

# Create non-root user and group
RUN groupadd -r goapp && useradd -r -g goapp goapp

WORKDIR /app

COPY --from=builder /opt/app /usr/local/bin/app

# Set permissions
RUN chown goapp:goapp /usr/local/bin/app

# Switch to non-root user
USER goapp

# Expose the port the app listens on
EXPOSE 4444

# Run the app
CMD ["app"]


