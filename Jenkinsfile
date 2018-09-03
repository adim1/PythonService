pipeline {
    agent {
      dockerfile true
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                def myimage=dockeruild("docker-container:latest")
                myimage.push()
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
