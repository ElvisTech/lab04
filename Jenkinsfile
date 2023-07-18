pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hola Mundo'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                // def scannerHome = tool 'SonarScanner';
                withSonarQubeEnv('SonarQubeServer') {
                    sh "sonar-scanner"
                }
            }
        }
    }
}
