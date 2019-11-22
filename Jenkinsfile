pipeline {
    agent none
    stages {
        stage('Jenkins Master') {
            agent any
            steps {
                sh 'echo "Hello DevOps"'
                sh '''
                    echo "An another small step here :)"
                    echo "curl -v google.hu"
                '''
            }
        }
        stage('ShellCheck @ Master') {
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
        stage('Hello on Slave') {
            agent { 
                label 'slave'
            }
            steps { 
                sh 'echo "Hello from Jennkins Master ons Jenkins Slave" > hello.txt'
            }
        }
    }
}