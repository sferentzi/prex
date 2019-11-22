pipeline {
    agent none
    stages {
        stage('Hello @ Jenkis') {
            agent { 
                label 'master'
            }
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
                sh 'shellcheck node.sh'
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
        stage('Check test-code for server-tes  @ Master') {
            agent { 
                label 'master'
            }
            steps {
                sh 'bash test_test_server.sh'
            }
        }
        stage('Check node.js server  @ Jenkins') {
            agent { 
                label 'master'
            }
            steps {
                sh 'bash test_server.sh'
            }
        }
    }
}