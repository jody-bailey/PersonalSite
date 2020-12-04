pipeline {
    agent any
    environment {
        dotnet = '/usr/local/share/dotnet/'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'where dotnet'
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