pipeline {
    agent any

    stages {
        stage('CODE-VALIDATION') {
            steps {
                echo 'validate code..'
		sh 'mvn validate compile'
            }
        }
        stage('Unit Test') {
            steps {
                echo 'Testing..'
		sh 'mvn package'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
