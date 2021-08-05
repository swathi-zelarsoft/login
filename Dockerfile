FROM        golang
RUN         mkdir /app
WORKDIR     /app
COPY        main.go tracing.go user.go .
RUN         go get github.com/dgrijalva/jwt-go
RUN         go get github.com/labstack/echo
RUN         go get github.com/labstack/echo/middleware
RUN         go get github.com/labstack/gommon/log
RUN         go get github.com/openzipkin/zipkin-go
RUN         go get github.com/openzipkin/zipkin-go/middleware/http
RUN         go get  github.com/openzipkin/zipkin-go/reporter/http
RUN         go build

CMD         [ "./app"]