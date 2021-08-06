FROM        golang
RUN         mkdir /app
WORKDIR     /app
COPY        main.go tracing.go user.go /app/
ADD        go get github.com/dgrijalva/jwt-go
ADD         go get github.com/labstack/echo
ADD         go get github.com/labstack/echo/middleware
ADD         go get github.com/labstack/gommon/log
ADD         go get github.com/openzipkin/zipkin-go
ADD         go get github.com/openzipkin/zipkin-go/middleware/http
ADD         go get  github.com/openzipkin/zipkin-go/reporter/http
RUN         go build

CMD         [ "./app"]