pipeline {
    agent any
    environment {
        dotnet = '/usr/local/share/dotnet'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                dotnet build PersonalSite.csproj
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