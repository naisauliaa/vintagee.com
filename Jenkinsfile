pipeline {
    agent any

    tools {
        maven 'maven-app'
    }

    stages {
        stage('Build Jar') {
            steps {
                sh 'mvn package'
            }
        }

        stage('Build Image') {
            steps {
                script {
                    echo "Building the Docker Image..."
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-repo', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        sh 'docker build -t naisauliaa/vintagee.com:jns-2.0 .'
                        sh 'echo "$PASS" | docker login -u "$USER" --password-stdin'
                        sh 'docker push naisauliaa/vintagee.com:jns-2.0'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo "Deploying the application..."
                    // Tambahkan command deploy di sini, misalnya:
                    // sh 'docker run -d -p 8080:8080 azeshion21/demo-app:jns-2.0'
                }
            }
        }
    }
}
