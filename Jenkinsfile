def scannerHome = tool 'SonarScanner'

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
                withSonarQubeEnv('SonarScanner') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
    }
}
