pipeline{
agent {
label 'NODEJS'
}
     stages{
        stage('Prepare Artifacts'){
        steps {
        sh '''
        zip -r ../frontend.zip *
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
