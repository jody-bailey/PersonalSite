pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                dotnetBuild 'PersonalSite.csproj -c Release'
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