pipeline{
	agent any

	stages{
		stage('build mvn')
		{
			steps
			{
				sh "cd my-app && /usr/local/bin/mvn clean && /usr/local/bin/mvn compile && /usr/local/bin/mvn package "

	 		}
		}
		stage('build with docker')
		{
			steps
			{
				withCredentials([usernamePassword(credentialsId: '3202ab49-29b1-4376-a6b5-7cbbacb8b474', username: 'NUSER', passwordVariable: 'PASS')]){
					sh "cd my-app && /usr/local/bin/docker build -t alshamari/alex-project:${BUILD_ID} ../ && /usr/local/bin/docker login -u ${NUSER} -p ${PASS} "}
			}
		}
	
	}
}




