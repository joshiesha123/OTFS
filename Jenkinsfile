pipeline {
  agent any
  stages {
    stage('Gradle Clean') {
      steps {
        sh 'gradlew clean'
      }
    }

    stage('Gradle Compile') {
      steps {
        sh 'gradlew compile'
      }
    }

    stage('SBT Publish to Local') {
      steps {
        sh 'sbt docker:publishLocal'
      }
    }

    stage('Docker Login') {
      steps {
        sh 'docker login -u jayesh2807 -p Jayesh@123%'
      }
    }

    stage('Docker Tag Image') {
      steps {
        sh 'docker tag optfs-backend'
      }
    }

    stage('Docker Push') {
      steps {
        sh 'docker push optfs-backend'
      }
    }

    stage('Docker Cleanup') {
      steps {
        sh 'docker rmi optfs-backend'
      }
    }

}
