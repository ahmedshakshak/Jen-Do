pipline {
    agent {dockerfile true}

    stages {
        stage('Build') {
            sh 'yarn build'
            echo 'Building Done'
        }

        stage('Test') {
            sh 'yarn test:unit'
            sh 'yarn test:unit'
            echo 'Testing Done'
        }
    }
}