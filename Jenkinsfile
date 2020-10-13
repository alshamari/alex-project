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
		
	
	}
}




