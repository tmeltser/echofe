pipeline {
  agent none
  stages {
    stage('build') {
      agent {
        docker {
          image 'openjdk:8-jre-alpine'
          args '--name dockerctl -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -v ~/.gradle:/root/.gradle'
        }

      }
      steps {
        sh 'echo tiran'
        sh './gradlew k8sBuild'
      }
    }
  }
}