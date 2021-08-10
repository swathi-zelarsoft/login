FROM        golang:alpine3.14
RUN         mkdir $GOPATH/src/app
WORKDIR     $GOPATH/src/app
COPY        main.go tracing.go user.go $GOPATH/src/app/
RUN        go get github.com/dgrijalva/jwt-go
RUN         go get github.com/labstack/echo
RUN         go get github.com/labstack/echo/middleware
RUN         go get github.com/labstack/gommon/log
RUN         go get github.com/openzipkin/zipkin-go
RUN         go get github.com/openzipkin/zipkin-go/middleware/http
RUN         go get  github.com/openzipkin/zipkin-go/reporter/http
RUN         go mod init
RUN         go mod tidy
RUN         go build .
CMD         [ "/go/src/app/app"]
