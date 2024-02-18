pipeline {
    agent {
        node {
            label 'devops1-ahmad'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo "build"
                sh '''
                cd apps
                npm install
                '''
            }
        }
        
        stage('Copy Env') {
            steps {
                echo "Copy env"
                sh '''
                cp /root/simple-apps/apps/.env apps/
                '''
            }
        }

        stage('Testing') {
            steps {
                echo "testing"
                sh '''
                cd apps
                npm test
                npm run test:coverage
                '''
            }
        }

        stage('Scanning') {
            steps {
                echo "scanning"
            }
        }

        stage('Containerized') {
            steps {
                echo "containerized"
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploy"
            }
        }

        stage('Publish') {
            steps {
                echo "publish"
            }
        }
    }
}
