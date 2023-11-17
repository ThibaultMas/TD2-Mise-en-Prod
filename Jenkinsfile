pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                checkout scm
            }
        }
        stage('Verify cloning') {
            steps {
                script {
                    if (currentBuild.currentResult == 'SUCCESS') {
                        echo 'Le repository a été cloné avec succès!'
                    } else {
                        error 'Échec de la récupération du repository.'
                    }
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t imagetd2 .'
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    def dockerImage = 'massontitu/imagetd2:latest'
                    sh "docker tag imagetd2 $dockerImage"
                    sh "docker push $dockerImage"
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                sh 'docker compose up -d'
            }
        }

        stage('Stop Docker Container') {
            steps {
                sh 'docker compose down'
            }
        }
    }
}