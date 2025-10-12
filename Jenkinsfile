pipeline{
    agent { label 'devops1-AhmadSolihin'}
    tools  { nodejs 'NodeJS18.16.0'}

    stages{
        stage('git Clone SCM'){
            steps {
                git branch: 'main', url: 'https://github.com/15ahmadsolihin/simple-apps.git'
            }
        }
        stage ('unit testing'){
            steps {
                sh '''
                npm install
                npm test'''
            }
        }
        stage('Code Review') {
            steps {
                sh '''
                sonar-scanner \
                -Dsonar.projectKey=simple-apps \
                -Dsonar.sources=. \
                -Dsonar.host.url=http://172.23.7.11:9000 \
                -Dsonar.login=sqp_a4251e1e8a9ec0b3b00aa35c24e2c58ab8f78fdf'''
            }
        }
    }
}