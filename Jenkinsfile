pipeline {
    agent any
    environment {
        dotnet = '/usr/local/share/dotnet/'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'dotnet --version'
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