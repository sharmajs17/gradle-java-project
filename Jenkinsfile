pipeline {
	agent any 
  
  stages {
  	stage ('Build') {
	  steps {
		sh './gradlew build'
	}
 }
    stage('Docker Build') {
    	agent any
      steps {
      	sh 'sudo docker build -t java-app .'
      }
    }
//    stage('Docker Push') {
//    	agent any
//      steps {
//      	withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
//        	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
//          sh 'docker push shanem/spring-petclinic:latest'
//        }
//      }
//    }
  }
}
