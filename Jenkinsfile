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
                if (env.BUILD_STATUS == 'SUCCESS') {
                    echo 'Le repository a été cloné avec succès!'
                } 
                else {
                    error 'Échec de la récupération du repository.'
                }
            }
        }
        stage('Stage3') {
            steps {
                echo 'Hello World'
            }
        }
    }
}