pipeline {

    options {
      timeout(time: 1, unit: 'HOURS') 
        }
     agent any
    stages{
        stage('moving .snowsql to workspace and replacing snowsql in /bin'){
            steps{
                sh ...
                rm /bin/snowsql
                mv /var/snowsql /bin/
                mv /var/.snowsql ./
                ...
            }
        }

    stages{
        stage('Test sqitch installation'){
            steps{
                sh 'sqitch --version'
            }
        }

        stage('Test snowsql installation'){
            steps{
                sh 'snowsql --version'
            }
        }
         

        stage('Sqitch Deploy'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'Sqitch', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
            sh 'sqitch deploy "db:snowflake://$USERNAME:$PASSWORD@fwa76732/Sqitch_Jenkins?Driver=Snowflake;warehouse=compute_wh"'
                        }
                    }
        }
                stage('Sqitch Verify'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'Sqitch', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
            sh 'sqitch verify "db:snowflake://$USERNAME:$PASSWORD@fwa76732/Sqitch_Jenkins?Driver=Snowflake;warehouse=compute_wh"'
                        }
                    }
        }
   
             stage('Sqitch Status'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'Sqitch', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
            sh 'sqitch status "db:snowflake://$USERNAME:$PASSWORD@fwa76732/Sqitch_Jenkins?Driver=Snowflake;warehouse=compute_wh"'
                        }
                    }
        }
       }    
 }
