##LOGIN
```
This service is written in Go language , Hence need to install 'go' in the system.
# apt update
# wget -c https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local

Adjusting the Path Variable
# export PATH=$PATH:/usr/local/go/bin
# source ~/.profile
# go version

Getting Started with Go

# mkdir /go
# cd /go 
# mkdir src 
# cd src
# git clone https://github.com/zelar-soft-todoapp/login.git
# cd login
# export GOPATH=/go
# go get github.com/dgrijalva/jwt-go
#  go get github.com/labstack/echo
#  go get github.com/labstack/echo/middleware
# go get github.com/labstack/gommon/log
# go get github.com/openzipkin/zipkin-go
# go get github.com/openzipkin/zipkin-go/middleware/http
# go get  github.com/openzipkin/zipkin-go/reporter/http
# go build main.go user.go tracing.go
# go build

    Start service now

#mv /root/login/systemd.service /etc/systemd/system/login.service
#systemctl daemon-reload
# systemctl start login
#systemctl enable login
#systemctl status login
```
:)