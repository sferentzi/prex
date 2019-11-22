pipeline {
    agent none
    stages {
        stage('Hello @ Jenkis') {
            agent any
            steps {
                sh 'echo "Hello DevOps"'
                sh '''
                    echo "An another small step here :)"
                    echo "curl -v google.hu"
                '''
            }
        }
        stage('ShellCheck @ Jenkins') {
            agent { 
                label 'master'
            }
            steps { 
                sh 'echo "Do Shellcheck"'
                sh 'shellcheck -V'
                sh 'pwd'
                sh 'shellcheck test.sh'
            }
        }
        stage('Hello @ Slave') {
            agent { 
                label 'slave'
            }
            steps { 
                sh 'echo "Hello from Jennkins Master ons Jenkins Slave" > hello.txt'
            }
        }
        stage('Deploy index.js @ Slave') {
            agent { 
                label 'slave'
            }
            steps { 
                sh 'bash node.sh'
            }
        }
    }
}