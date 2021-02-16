pipeline {

    options {
      timeout(time: 1, unit: 'HOURS') 
        }
     agent{
        docker {
          image '983436/sqitch-snowflake:v1.0'
         args "-u root -v /var/run/docker.sock:/var/run/docker.sock --entrypoint=''"
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
     
       }    
 }
