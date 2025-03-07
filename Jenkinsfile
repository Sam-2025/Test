pipeline {
    agent any

    stages {
        stage('01'){
            git branch: 'main', url: 'https://github.com/Sam-2025/Test.git'
        }
        
        stage('02') {
            steps {
                dir('sample-ec2') {
                  sh 'terraform init'
               }
            }
        }
        stage('03') {
            steps {
               dir('sample-ec2') {
                  sh 'terraform plan'
               }
            }
        }
        stage('04') {
            steps {
                dir('sample-ec2') {
                  sh'terraform apply -auto-approve'
               }
            }
        }
    }
}
