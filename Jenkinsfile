pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh '''
		echo '******************'
                echo '***BUILDING JAR***'
		echo '******************'
		cd my-app
		mvn -B -DskipTests clean package
		
		'''
            }
        }
	
	stage('BuildImage') {
            steps {
                sh '''
		./jenkins/build/build.sh

                '''
            }
        }
        
	stage('Test') {
            steps {
		sh '''
                echo '******************'
                echo '******TESTING*****'
                echo '******************'
                ./jenkins/build/mvn.sh mvn test

                '''
            }
        }
        
	stage('Push') {
            steps {
                echo 'Pushing..'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
