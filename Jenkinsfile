pipeline {
    agent any
    environment {
        sh = 'source ~/.zshrc'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'source ~/.zshrc && dotnet --version'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}