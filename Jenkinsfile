pipeline{
    agent{
        label 'Jenkins-Agent'
    }
    tools{
        jdk 'Java17'
        maven 'Maven3'
    }
    stages{
        stage("Cleanupthe work station"){
            step{
                cleanWs()
            }
        }
        stage("Checkut from SCM"){
            steps{
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/manuthug/RegApp'
            }
        }
        stage("Build Application"){
            steps{
                sh "mvn clean package"
            }
        }
        stage("Test Application"){
            steps{
                sh "mvn test"
            }
        }
    }
}

