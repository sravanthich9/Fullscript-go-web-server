FROM golang:latest
LABEL maintainer "Sravanthi <Sravanthich.ch9@gmail.com>"
RUN go get github.com/Fullscript/go-web-server.git
ADD . /go/src/github.com/"sravanthich9"/myproject
RUN go install github.com/"sravanthich9"/myproject
ENTRYPOINT /go/bin/myproject
EXPOSE 8080
