pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                docker build -t Docker-Container:latest .
                docker run --name Docker-Container -d -p 80:80 Docker-Container:late$
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying..' 
            }
        }
    }
}
