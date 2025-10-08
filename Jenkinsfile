// Jenkinsfile yang sudah diperbaiki dan diatur ulang

pipeline {
    agent any

    // Mendefinisikan variabel global agar mudah diubah
    environment {
        DOCKER_IMAGE_NAME = "naisauliaa/vintagee.com"
        IMAGE_TAG         = "jns-1.0"
        DOCKER_HUB_CREDS  = "docker-hub-repo" // PASTIKAN ID KREDENSIAL INI BENAR
    }

    tools {
        maven 'maven-app'
    }

    stages {
        // STAGE 1: Compile kode Java menjadi file .jar
        stage('Build Jar') {
            steps {
                echo "Compiling the application..."
                sh 'mvn package'
            }
        }

        // STAGE 2: Build Docker image dari Dockerfile
        stage('Build Image') {
            steps {
                echo "Building the Docker Image..."
                // Menggunakan variabel yang sudah didefinisikan di atas
                sh "docker build -t ${DOCKER_IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        // STAGE 3: Login ke Docker Hub dan Push image
        stage('Push Image') {
            steps {
                script {
                    echo "Pushing the Docker Image to Docker Hub..."
                    // Menggunakan blok withCredentials hanya saat dibutuhkan (untuk login dan push)
                    withCredentials([usernamePassword(credentialsId: env.DOCKER_HUB_CREDS, passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        // Login ke Docker Hub
                        sh 'echo "$PASS" | docker login -u "$USER" --password-stdin'
                        
                        // Push image ke repository
                        sh "docker push ${DOCKER_IMAGE_NAME}:${IMAGE_TAG}"
                    }
                }
            }
        }

        // STAGE 4: Deploy aplikasi (saat ini hanya placeholder)
        stage('Deploy') {
            steps {
                script {
                    echo "Deploying the application..."
                    // Di sini Anda akan menambahkan perintah deployment
                    // Contoh: sh 'kubectl apply -f deployment.yaml'
                }
            }
        }
    }

    // POST-BUILD ACTION: Selalu dijalankan setelah semua stage selesai
    post {
        always {
            // Melakukan logout dari Docker Hub untuk kebersihan dan keamanan
            echo "Logging out from Docker Hub..."
            sh 'docker logout'
        }
    }
}
