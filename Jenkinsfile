
pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Стягування репозиторію за допомогою команди git з використанням SSH
                git branch: 'main', url: 'git@github.com:AnichkaKb/gitea.git'
            }
        } 
       
    }
}

