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
            agent any
            steps {
                echo 'Deploying..'
                sh 'docker stop docker-container || true && docker rm docker-container || true' 
                sh 'docker run --name docker-container -d -p 81:80 docker-container:latest'
                }
             }
    }
}
