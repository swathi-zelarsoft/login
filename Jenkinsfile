pipeline{
agent {
label 'NODEJS'
}
     stages{
        stage('Downloading dependencies'){
        steps {
        sh '''
        cd login
        go get github.com/dgrijalva/jwt-go
        go get github.com/labstack/echo
        go get github.com/labstack/echo/middleware
        go get github.com/labstack/gommon/log
        go get github.com/openzipkin/zipkin-go
        go get github.com/openzipkin/zipkin-go/middleware/http
        go get  github.com/openzipkin/zipkin-go/reporter/http
        '''
        }
        }

      stage('Build the file'){
                 steps {
                 sh '''
                 go build
                 '''
                 } }
       stage('Prepare Artifacts'){
                       steps {
                       sh '''
                       zip -r login.zip login
                       '''
                        }
                        }
       stage('upload artifacts'){
        steps{
        sh '''
        curl -v -u admin:admin123 --upload-file /home/ubuntu/workspace/frontend.zip http://192.168.0.52:8081/repository/frontend/frontend.zip
        '''
        }}
       }
     }
