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
    }
}