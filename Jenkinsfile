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

        stage('Run Docker Container') {
            steps {
                script {
                    // Запуск Docker контейнера
                    sh 'docker run -p 8080:3000 giteaapp'
                }
            }
        }
    }
}


