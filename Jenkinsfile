pipeline{
    agent { label 'devops1-AhmadSolihin'}
    tool  { nodejs 'NodeJS18.16.0'}

    stages{
        stage('git Clone SCM'){
            steps {
                git branch: 'main', url: 'https://github.com/15ahmadsolihin/simple-apps.git'
            }
        }
    }
}