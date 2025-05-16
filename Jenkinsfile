	pipeline {
    agent any

    stages {
        stage('Clone SCM') {
            steps {
                echo 'Cloning form GITHUB'
			git branch: 'main', url: 'https://github.com/PrasadValour7/mindcircuit15d.git'
            }
        }
		
		
        stage('Build Artifact') {
            steps {
                echo 'Building project with Maven'
				sh 'mvn clean install'	
		
            }
        }
        stage('Deploy Tomcat') {
            steps {
                echo 'Deploying Artifact to Tomcat webserver'
				deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat', path: '', url: 'http://ec2-52-201-235-232.compute-1.amazonaws.com:8081/')], contextPath: 'MCPAPP', war: '**/*.war'
            }
        }
    }
}
