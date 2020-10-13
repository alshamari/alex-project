pipeline{
	agent any

	stages{
		stage('build mvn'){
			steps
			{
				cd my-app
				/usr/local/bin/mvn clean
	 			/usr/local/bin/mvn compile
	 			/usr/local/bin/mvn package 
			}
		}
			stage('build docker image'){
				steps
				{

					/usr/local/bin/docker build -t alshamari/alexproject:{build_ID} ../
					/usr/local/bin/docker login -u ${alshamari} -p ${Aa5233823}
					/usr/local/bin/docker push alshamari/alexproject:${BUILD_ID}
				}
		  	
         	}
         	stage('deploy')
         	{
         		steps
         		{
         			cd terraform
         			terraform init 
         			terraform plan
         			terraform apply -auto -approve
         		}
         	}
	}
	
}





