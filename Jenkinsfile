pipeline {
    agent {
        label 'anna'
    }
    tools {
                    go 'go' 
                }
    stages {
        stage('Git') {
            steps {
                // Крок для стягування репозиторію, вказати треба SSH
                git branch: 'main', url: 'git@github.com:AnichkaKb/gitea.git'
            }
        }
        

        stage('Build') {
            steps {
                // Виконання команди для збирання всіх модулів
                sh 'go mod download'
                // gkvofmbv
                sh 'make backend'
                sh 'screen ./gitea&'
                //sh 'TAGS="bindata" make build' // Виконати ваші команди для білду
                
                //sh 'make backend'
                
                //sh 'make frontend'
                //sh 'screen ./gitea &'
            }
        }
       stage('Test') {
            steps {
                  
                 sh 'make test-frontend'
                 //sh 'make test-backend'
                 //sh './gitea web'
                             
        }
     }
  }
}
