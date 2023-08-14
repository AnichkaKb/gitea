
pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Стягування репозиторію за допомогою команди git з використанням SSH
                sh 'git clone git@github.com:AnichkaKb/gitea.git'
            }
        } 
       
    }
}

