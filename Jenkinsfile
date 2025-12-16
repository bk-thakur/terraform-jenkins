pipeline {
    agent any

    parameters {
        booleanParam(
            name: 'AUTO_APPROVE',
            defaultValue: false,
            description: 'Automatically run terraform apply'
        )
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }

    stages {

        stage('Checkout Git Repo') {
            steps {
                git 'https://github.com/bk-thakur/terraform-jenkins.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            when {
                expression { params.AUTO_APPROVE == true }
            }
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
