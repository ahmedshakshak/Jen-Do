pipeline {
    agent {
            dockerfile {
                dir '.'
                args '-u root'
            }
    }
    
    stages {
        stage('Build-app') {
            steps {
                sh 'cd /todo-app && yarn build >> /todo-app/buildLog.txt 2>&1 && pwd && ls && ls /todo-app/buildLog.txt'
                sh 'cp /todo-app/buildLog.txt "${WORKSPACE}"'
                echo 'Building Done'
            }
            
            post {
                always {
                   archiveArtifacts artifacts: 'buildLog.txt'
                }
            }
        }


        stage('Test') {
            steps {
                sh 'cd /todo-app && yarn test:unit && yarn test:e2e --headless'
                echo 'Tests passed' 
            }
        }
        
    }
}