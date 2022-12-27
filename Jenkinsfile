pipeline {
	agent any 
  
  stages {
	stage ('Build') {
	  steps {
		sh './gradlew build'
	}
 }
    stage('Docker Build') {
      steps {
	sh 'docker build . -t 254456369/java-gradle-repo:v1'
      }
    }
    stage('Docker Push') {
	agent any
      steps {
	withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
        	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
	      sh 'docker push 254456369/java-gradle-repo:v2'  
	      
	}
      }
    }
  }
}
