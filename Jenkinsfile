pipeline {
    agent {
      dockerfile true
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                docker build -t docker-container:latest .
                docker run --name docker-container -d -p 80:80 docker-container:latest
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
