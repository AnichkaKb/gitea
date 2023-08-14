
pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Стягування репозиторію за допомогою команди git з використанням SSH
                sh 'git clone git@github.com:AnichkaKb/gitea.git'
            }
        }
        stage('Build') {
            steps {
                // Ваші кроки для збірки
            }
        }
        stage('Test') {
            steps {
                // Ваші кроки для тестування
            }
        }
        stage('Deploy') {
            steps {
                // Ваші кроки для розгортання
            }
        }
    }
}

