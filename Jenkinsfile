pipeline {
    agent any

    stages {
        stage('Project clone') {
            steps {
                checkout scm
            }
        }
        stage('Vefify repo') {
            steps {
                script {
                    sh 'ls -la'
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