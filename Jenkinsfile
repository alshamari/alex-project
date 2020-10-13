pipeline{
	agent any

	stages{
		stage('build mvn')
		{
			steps
			{
				sh "cd my-app"
				sh "mvn clean"
	 			sh "mvn compile"
	 			sh "/usr/local/bin/mvn package" 
	 		}
		}
		
	
	}
}




