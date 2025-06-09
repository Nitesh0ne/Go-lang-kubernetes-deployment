# Build Stage
FROM golang as builder
#set environment variables 
ENV CGO_ENABLED=0 GOOS=linux

WORKDIR /opt


# Copy source files
COPY . .

#download dependencies
RUN go mod tidy 


# Build the Go application
RUN go build -v -o app ./cmd/web


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


