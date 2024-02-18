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
                sh '''
                cd apps
                sonar-scanner   -Dsonar.projectKey=Simple-Apps   -Dsonar.sources=.   -Dsonar.host.url=http://172.23.10.13:9000   -Dsonar.login=sqp_b68a9d3e1d183698977b788227a0e5c40acc4a88
                '''
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
