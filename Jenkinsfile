
pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hola Mundo'
            }
        }
        stage('SonarQube Analysis') {
            environment {
                // Define the SonarQube server URL and credentials
                SONARQUBE_URL = 'http://lab02-sonarqube-1:9000'
                SONARQUBE_TOKEN = credentials('sonarQb')
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
