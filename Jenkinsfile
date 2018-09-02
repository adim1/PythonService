pipeline {
    agent {
      dockerfile true
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                docker build -t Docker-Container:latest .
                docker run --name Docker-Container -d -p 80:80 Docker-Container:latest
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
