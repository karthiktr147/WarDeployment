pipeline{
    agent any
    stages{
        stage('Delete based on build range of a given project'){
            steps{
                script{
                    def jobName = 'KarthikServerDeploy1'
                    def rs = Fingerprint.RangeSet.fromString("86-92", false);
                    def reallyDelete = false;

                    def job = Jenkins.instance.getItemByFullName(jobName);
                    println("Job: ${job.fullName}");

                    def builds = Jenkins.instance.getItemByFullName(jobName).getBuilds(rs);
                    println("Found ${builds.size()} builds");
                    builds.each{ b-> 
                          if (reallyDelete && b.result 
== Result.SUCCESS) {
                            println("Deleting ${b}");
                            b.delete();
                          } else {
                            println("Found match ${b}");
                          }
                    }
                }
                script{
                   Jenkins.instance.getItemByFullName('KarthikServerDeploy1').builds.findAll { it.number > 86 && it.number < 92 && it.result 
== Result.SUCCESS }.each { it.delete() }
//change success to failure if u have to delete failed builds
                }
            }
        }
    }
}
