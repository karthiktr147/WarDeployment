pipeline{
    agent any
    stages{
               stage('war package'){
            tools{
                maven 'Maven'
            }
           steps{
               sh 'mvn clean package'
           }
        }

    }
}
