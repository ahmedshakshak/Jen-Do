pipeline {
    agent {dockerfile true}

    stages {
        stage('Build') {
            steps { 
                sh 'yarn build'
                echo 'Building Done'
            }
        }

        stage('Test') {
            steps { 
                sh 'yarn test:unit'
                sh 'yarn test:unit'
                echo 'Testing Done'
            }
        }
    }
}
