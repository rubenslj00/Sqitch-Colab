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
                withCredentials([usernamePassword(credentialsId: 'sqitch', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
           
<<<<<<< HEAD
            sh 'sqitch deploy "db:snowflake://$USERNAME:$PASSWORD@fva39793.us-east-1.snowflakecomputing.com/DEMO_DB?Driver=Snowflake;warehouse=compute_wh;"'
=======
            sh 'sqitch deploy "db:snowflake://$USERNAME:$PASSWORD@uca35382.snowflakecomputing.com/sqitch_jenkins?Driver=Snowflake;warehouse=compute_wh;"'
>>>>>>> 0c60ccf17257bc057c924425b39e7328082b3ca6
                        }
                    }
        }
                stage('Sqitch Verify'){
            steps {
<<<<<<< HEAD
                withCredentials([usernamePassword(credentialsId: 'sqitch', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
            sh 'sqitch verify "db:snowflake://$USERNAME:$PASSWORD@fva39793.us-east-1.snowflakecomputing.com/DEMO_DB?Driver=Snowflake;warehouse=compute_wh;"'
=======
                withCredentials([usernamePassword(credentialsId: 'snowflake_creds', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
            sh 'sqitch verify "db:snowflake://$USERNAME:$PASSWORD@uca35382.snowflakecomputing.com/sqitch_jenkins?Driver=Snowflake;warehouse=compute_wh;"'
>>>>>>> 0c60ccf17257bc057c924425b39e7328082b3ca6
                        }
                    }
        }
   
             stage('Sqitch Status'){
            steps {
<<<<<<< HEAD
                withCredentials([usernamePassword(credentialsId: 'sqitch', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
            sh 'sqitch status "db:snowflake://$USERNAME:$PASSWORD@fva39793.us-east-1.snowflakecomputing.com/DEMO_DB?Driver=Snowflake;warehouse=compute_wh;"'
=======
                withCredentials([usernamePassword(credentialsId: 'snowflake_creds', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
            sh 'sqitch status "db:snowflake://$USERNAME:$PASSWORD@uca35382.snowflakecomputing.com/sqitch_jenkins?Driver=Snowflake;warehouse=compute_wh;"'
>>>>>>> 0c60ccf17257bc057c924425b39e7328082b3ca6
                        }
                    }
        }
       }    
 }
