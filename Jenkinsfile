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
	sh 'docker build . -t 254456369/java-gradle-repo:v2'
      }
    }
    stage('Docker Push') {
	agent any
      steps {
	sh "docker login -u 254456369 -p dckr_pat_fDmI4Qg0QfGnZnF1jgTtfbFV9HM"
            sh 'docker push 254456369/java-gradle-repo:v2'  
	}
      }
    }
  }
}
