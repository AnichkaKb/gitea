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

         stage('Clean Container') {
             steps {
                script {
                     
                    sh 'docker container prune'
                    
                }
            }
         }
        
     /*   stage('Build Docker Container') {
            steps {
                script {
                     //Запуск Docker контейнера
                    sh 'docker build -t giteaapp .'
                    
                }
            }
        } 
    */
        stage('Run Docker-compose') {
            steps {
                script {
                    // Запуск Docker контейнера
                    sh 'docker-compose up -d'
                }
            }
        } 
        stage('Deploy Docker') {
            steps {
                script {
                    sh 'scp docker-compose.yml jenkins@192.168.56.115:/home/jenkins/'
                    sh 'ssh jenkins@192.168.56.115 "docker-compose up -d"'
                }
            }
        }         
    }
}
