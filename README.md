## Sample Project for Execution of CI/CD Pipeline using Sqitch and Jenkins.

Prerequisites

1)Sqitch-A Database Change Management Application.It provides support for various databases(MySql,Oracle,PostgresSql,Snowflake etc.) I have used Sqitch with Snowflake support. You can either install Sqitch locally or use my Sqitch-Snowflake Docker Image (983436/sqitch-snowflake:v1.0)

2)Jenkins-It is an opensource automation tool written in Java with plugins built for Continuous Integration purpose.

3)Snowflake Account: In order to access Snowflake database,you need a Snowflake Account. If you don't have one, you could easily get a trial account worth $400 by signing up to https://www.snowflake.com/

4)Git Client -A github repository for maintaining all the timely commits and updates to your database.

## Jenkinsfile
This file contains the pipeline code, which will be executed by the Jenkins server stage by stage.

## Github-Webhook
Webhook is enabled for this repository, which helps in auto trigger after any push or pull request is made , and helps in auto building and execution of pipeline.
