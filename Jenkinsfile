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
                // def scannerHome = tool 'lab-02-sonarqube-1';
                withSonarQubeEnv('lab-02-sonarqube-1') {
                    sh "sonar-scanner"
                }
            }
        }
    }
}
