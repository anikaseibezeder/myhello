FROM golang:1.11-alpine

# Set maintainer label: maintainer=[YOUR-EMAIL]
LABEL maintainer='anika.seib@gmail.com'

# Set working directory: `/src`
WORKDIR /src

# Copy local file `main.go` to the working directory
COPY main.go /src/main.go

# List items in the working directory (ls)
RUN ls

# Build the GO app as myapp binary and move it to /usr/
RUN go build -o myapp && mv myapp /usr/

#Expose port 8888
EXPOSE 8888

# Run the service myapp when a container of this image is launched
ENTRYPOINT /usr/myapp


