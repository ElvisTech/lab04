
pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hola Mundo'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t elvistech/mysrv:latest .'
            }
        }
        stage('SonarQube Analysis') {
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
                       sh "${scannerHome}/bin/sonar-scanner -Dsonar.token=${SONARQUBE_TOKEN} -Dsonar.host.url=${SONARQUBE_URL}"
                    }
                }
            }
        }
    }
}
