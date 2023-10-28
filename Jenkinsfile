pipeline {
    agent any
    stages {
        stage('Prerequisite Image') {
            steps {
                sh 'packer build prerequisite-packer-template.json'
            }
        }
         stage('Build .NET Application') {
            steps {
                sh 'dotnet build ./HelloWorldApp/HelloWorldApp.csproj'
            }
        }
        stage('Application Image') {
            steps {
                sh 'packer build app-packer-template.json'
            }
        }
    }
}
