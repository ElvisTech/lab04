
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
                script {
                    def scannerHome = tool 'SonarScanner';
                    withSonarQubeEnv('SonarScanner') {
                       sh "${scannerHome}/bin/sonar-scanner"
                    }
                }
            }
        }
    }
}
