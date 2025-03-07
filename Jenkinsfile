pipeline {
    agent any

    stages {
        stage('01') {
            steps {
                git branch: 'main', url: 'https://github.com/Fardeen313/TERRAFORMPRACTICE.git'
            }
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
