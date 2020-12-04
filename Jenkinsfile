pipeline {
    agent any
    environment {
        dotnet = '/usr/local/share/dotnet/dotnet'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'dotnet build PersonalSite.csproj -c Release'
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