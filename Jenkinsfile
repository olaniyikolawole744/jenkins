pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials ('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials ('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'us-east-1'
    }

    stages {
        stage('Run terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Run terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Run terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        stage('Run terraform destroy') {
            steps {
                sh 'terraform destroy --auto-approve'
            }
        }
    }
}
