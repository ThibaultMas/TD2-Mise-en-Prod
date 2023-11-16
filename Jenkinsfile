pipeline {
    agent any
    def dockerPath = sh(script: 'which docker', returnStdout: true).trim()

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
        stage('Debug') {
            steps {
                sh 'env'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh '${dockerPath} build -t imagetd2 .'
            }
        }
        
        // stage('Run Docker Container') {
        //     steps {
        //         sh 'docker-compose up -d'
        //     }
        // }
    }
}