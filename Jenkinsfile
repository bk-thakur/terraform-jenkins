pipeline {
    parameters {
        booleanParam(name: 'autoApprove', defaultValue: 'fals', description: 'automatically run apply after generating plan') ')
    }
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY') 
    }
    agent any
    stages {
        stage('checkout git repo') {
            steps {
                git 'https://github.com/bk-thakur/terraform-jenkins.git'
            }
        }

        stage ('terraform init') {
            steps {
                sh 'terraform init'
            
            }
        }
        stage ('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage ('terraform apply') {
            steps {
                sh 'terraform apply -auto-approve ${params.autoApprove}'
            }
        }

    }
}
