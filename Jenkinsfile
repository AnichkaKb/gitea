pipeline {
    agent {
        label "anna"
    }

    stages {
        stage('Checkout SCM') {
            steps {
                // Крок для забору коду з репозиторію (git checkout та інше)
                checkout scm
            }
        }

        stage('Build Docker Container') {
            steps {
                script {
                     Запуск Docker контейнера
                    sh 'docker build -t giteaapp .'
                    
                }
            }
        }
        stage('Run Docker-compose') {
            steps {
                script {
                    // Запуск Docker контейнера
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}


