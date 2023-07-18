pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hola Mundo'
            }
        }
        stage('SonarQube Analysis') {
            def scannerHome = tool 'SonarScanner';
            withSonarQubeEnv() {
                sh "${scannerHome}/bin/sonar-scanner"
            }
        }
    }
}
