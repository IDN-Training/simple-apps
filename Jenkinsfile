pipeline {
    agent { label 'devops1-nama' }

    stages {
        stage('Pull SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/15ahmadsolihin/simple-apps.git'
            }
        }
        
        stage('Build') {
            steps {
                sh'''
                cd app
                npm install
                '''
            }
        }
        
        stage('Testing') {
            steps {
                sh'''
                cd app
                APP_PORT=50001 npm test
                APP_PORT=50001 npm run test:coverage
                '''
            }
        }
        
        // stage('Code Review') {
        //     steps {
        //         sh'''
        //         cd app
        //         sonar-scanner \
        //             -Dsonar.projectKey=Simple-Apps \
        //             -Dsonar.sources=. \
        //             -Dsonar.host.url=http://172.23.x.x:9000 \
        //             -Dsonar.login=token-sonar
        //         '''
        //     }
        // }
        
        stage('Deploy') {
            steps {
                sh'''
                docker compose up --build -d
                '''
            }
        }
        
        stage('Backup') {
            steps {
                 sh 'docker compose push' 
            }
        }
    }
}