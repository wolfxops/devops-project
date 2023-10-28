pipeline {
    agent any
    stages {
        stage('Prerequisite Image') {
            steps {
                sh 'packer build packer-template/prerequisite-packer-template.json'
            }
        }
        stage('Application Deployment & Image ') {
            steps {
                sh 'packer build packer-template/app-packer-template.json'
            }
        }
    }
}
