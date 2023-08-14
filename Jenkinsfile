
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/AnichkaKb/gitea.git'
            }
        }
        stage('Build') {
            steps {
                // Виконайте будь-які дії, пов'язані зі збіркою вашого проекту
            }
        }
        // Інші етапи
    }
}
