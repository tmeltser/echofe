pipeline {
  agent none
  stages {
    stage('build') {
      agent {
        docker {
          image 'maven:3-alpine'
        }

      }
      steps {
        bat 'echo hello'
      }
    }
  }
}