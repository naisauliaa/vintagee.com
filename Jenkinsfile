// Jenkinsfile Final yang sudah diperbaiki

pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = "naisaauliaa/vintagee-app"
        IMAGE_TAG         = "jns-1.1"
        DOCKER_HUB_CREDS  = "docker-hub-repo" 
    }

    tools {
        maven 'maven-app'
    }

    stages {
        stage('Build Jar') {
            steps {
                echo "Compiling the application..."
                sh 'mvn package'
            }
        }

        stage('Build Image') {
            steps {
                echo "Building the Docker Image..."
                sh "docker build -t ${DOCKER_IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        stage('Push Image') {
            steps {
                script {
                    echo "Pushing the Docker Image to Docker Hub..."
                    withCredentials([usernamePassword(credentialsId: env.DOCKER_HUB_CREDS, passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        
                        // =================================================================
                        // == PASTIKAN PERINTAH 'sh' DI BAWAH INI ADALAH SATU BARIS TUNGGAL ==
                        // =================================================================
                        sh 'echo "$PASS" | docker login -u "$USER" --password-stdin'
                        
                        // Push image ke repository
                        sh "docker push ${DOCKER_IMAGE_NAME}:${IMAGE_TAG}"
                    }
                }
            }
        }
    }

    post {
        always {
            echo "Logging out from Docker Hub..."
            sh 'docker logout'
        }
    }
}
