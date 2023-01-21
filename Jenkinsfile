pipeline 
{
	agent any
	stages
	{
		stage('Clone') 
		{
			steps
			{
				checkout scm
			}
		}

		stage('Build Docker image') 
		{
			steps 
			{
				sh 'docker build -t 19120064/devops_demo:latest .' 
			}
		}

		stage('Push image to DockerHub') 
		{
			steps 
			{
				withDockerRegistry([ credentialsId: "Docker", url: "https://registry.hub.docker.com" ]) 
				{
					sh  'docker push 19120064/devops_demo:latest'
				}		
			}
		}

		stage('Test') 
		{
			steps
			{
				sh "echo 'passed'"
			}
		}
	}
}

