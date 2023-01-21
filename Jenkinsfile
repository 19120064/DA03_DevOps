pipeline 
{
	agent any
	stages
	{
		// def dockerCredentials = "Docker"
		stage('Clone') 
		{
			checkout scm
		}

		stage('Build Docker image') 
		{
			steps 
			{
				sh 'docker build -t 19120064/DevOpsDemo:latest .' 
			}
		}

		stage('Test') 
		{
				sh "echo 'passed'"
		}
	}


	
		// stage('Push image to DockerHub') 
		// {
		// 	steps 
		// 	{
		// 		withDockerRegistry([ credentialsId: "${dockerCredentials}", url: "https://registry.hub.docker.com" ]) 
		// 		{
		// 			sh  'docker push 19120064/DevOpsDemo:latest'
		// 		}		
		// 	}
		// }
	// node 
	// {
		// stage('Deploy')
		// {
		// 	try 
		// 	{
		// 		sh "docker kill DevOpsDemo"
		// 	}
		// 	catch (exe) {}
		// 	finally 
		// 	{
		// 		app.run("--rm --name devops_demo -p 8081:3000")
		// 	}
		// }
}


// node {
// 	def app
// 	stage('Clone') {
// 		checkout scm
// 	}

// 	stage('Build') {
// 		app = docker.build("19120064/devops_demo")
// 	}

// 	stage('Push') {
// 		docker.withRegistry("https://registry.hub.docker.com", "Docker") {
// 			app.push("${env.BUILD_ID}") 
// 			app.push("latest")
// 		}
// 	}

// 	stage('Deploy'){
// 		try {
// 			sh "docker kill devops_demo"
// 		}
// 		catch (exe){}
// 		finally {
// 			app.run("--rm --name devops_demo -p 8081:3000")
// 		}
// 	}
	
// 	stage('Test') {
// 		app.inside {
// 			sh "echo 'passed'"
// 		}
// 	}
// }