pipeline {
  agent any
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/limbaba1120/echo-ip.git', branch: 'master'
      }
    }
    stage('docker build and push') {
      steps {
        sh '''
        docker build -t 192.168.1.10:8443/echo-ip .
        docker push 192.168.1.10:8443/echo-ip
        '''
      }
    }
    stage('deploy kubernetes') {
      steps {
        sh '''
        kubectl apply -f todo-dep000.yml
        kubectl apply -f todo-ser000.yml
        '''
      }
    }
  }
}
