pipeline {
    agent none

    stages {
        stage('Build') {
            agent any
            steps {
                echo 'Building..'
                sh 'docker build -t docker-container:latest .'
            }
        }
       stage('Deploying..') {
            steps {
                echo 'Deploying..'
                sh 'docker run --name docker-container -d -p 80:80 docker-container:latest'
    }
}
