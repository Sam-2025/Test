pipeline {
    agent any

    stages {
        stage('01') {
            steps {
                git branch: 'main', url: 'https://github.com/Sam-2025/Test.git'
            }
        }
        
        stage('02') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('03') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('04') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
