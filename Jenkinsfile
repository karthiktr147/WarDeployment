pipeline{
    agent any
    stages{
        stage('Git'){
           steps{
               git 'https://github.com/karthiktr147/WarDeployment.git'}
        }
        stage('war package'){
            tools{
                maven 'Maven'
            }
           steps{
               sh 'mvn clean package'
           }
        }
	stage('server'){
            steps{
                sh 'cp /var/lib/jenkins/workspace/pipeline/target/*.war  /opt/tomcat/webapps/'
            }
        }
    }
   
    post {
    always {
        echo 'build status mail from jenkins'
       mail to: 'karthiktr147@gmail.com',
          subject: "Result: ${currentBuild.fullDisplayName}",
          body: "${env.BUILD_URL} has result ${currentBuild.result}"
    }
     
  }
}
