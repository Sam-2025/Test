pipeline {
    agent any

    stages {
        
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
