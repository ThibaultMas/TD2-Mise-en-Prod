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
        stage('Debug') {
            steps {
                sh 'env'
            }
        }
        stage('Build Docker Image') {
            steps { 
                sh '''
                    def dockerPath = sh(script: 'command -v docker', returnStdout: true).trim()
                    "${dockerPath} build -t imagetd2 ."
                    '''
            }
        }
        
        // stage('Run Docker Container') {
        //     steps {
        //         sh 'docker-compose up -d'
        //     }
        // }
    }
}