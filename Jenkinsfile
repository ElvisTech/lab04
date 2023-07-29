
pipeline {
    agent any

    stages {
        stage('Testing') {
            environment {
                // Define the SonarQube server URL and credentials
                SONARQUBE_URL = 'http://lab02-sonarqube-1:9000'
                SONARQUBE_TOKEN = 'sqp_92df251e0ba68db4d65122aa3ea53fa873a7a8b8'
            }
            steps {
                script {
                    def scannerHome = tool 'SonarScanner';
                    withSonarQubeEnv('SonarServer') {
                       //sh "${scannerHome}/bin/sonar-scanner"
                       bat "${scannerHome}/bin/sonar-scanner -Dsonar.token=${SONARQUBE_TOKEN} -Dsonar.host.url=${SONARQUBE_URL}"
                    }
                }
            }
        }
        stage('Build') {
            steps {
                bat 'docker build -t elvistech/acceso:latest .'
            }
        }
        stage('Delivery') {
            steps {
                bat 'docker push elvistech/acceso:latest'
            }
        }
        stage('Deploy') {
            steps {
                bat 'docker run -d --name myweb -p 80:8000 elvistech/acceso:latest'
            }
        }
    }
}
