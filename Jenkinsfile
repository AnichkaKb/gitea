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
                // Крок для стягування репозиторію, замініть URL репозиторію на свій
                git branch: 'main', url: 'git@github.com:AnichkaKb/gitea.git'
            }
        }
        

        stage('Build') {
            steps {
                // Виконання команди для білду програми
                // Замініть команду на відповідну для вашого проекту
                sh 'go mod download'
                //sh 'go get ./...'
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
