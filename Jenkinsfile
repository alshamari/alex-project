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
				sh "cd my-app && /usr/local/bin/docker build -t alshamari/alex-project:${BUILD_ID} ../ && /usr/local/bin/docker login -u ${alshamari} -p ${Aa5233823}"
				
			}
		}
	
	}
}




