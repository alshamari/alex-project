pipeline{
	agent any

	stages{
		stage('build mvn')
		{
			steps
			{
				sh "cd my-app"
				sh "/usr/local/bin/mvn clean"
	 			sh "/usr/local/bin/mvn compile"
	 			sh "/usr/local/bin/mvn package" 
	 		}
		}
		
	
	}
}




