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
                
                //sh 'make backend'
                //sh 'screen ./gitea&'
                sh 'TAGS="bindata sqlite sqlite_unlock_notify" make build' // Команди для білду
                
                
                //sh 'make frontend'
                sh 'screen ./gitea &'
            }
        }
       stage('Test') {
            steps {
                 sh 'echo YOUR_PASSWORD | sudo -S apt-get install build-essential'
                 sh 'CGO_ENABLED=1'
                 sh 'make test'
                 //sh './gitea web'
                             
            }
        }   
       stage('Test with linter') {
            steps {
                  
                 sh 'golint'
                             
             }    
         }
   }
}
