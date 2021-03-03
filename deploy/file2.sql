-- Deploy SnowProject:file2 to snowflake
-- requires: file1

USE WAREHOUSE &warehouse;

-- XXX Add DDLs here.
CREATE TABLE jenkins_schema(
    empid   INT        PRIMARY KEY AUTOINCREMENT,
    name  TEXT         NOT NULL,
    address  TEXT         NOT NULL,
    emailid TEXT         NOT NULL
);


CREATE TABLE jenkins_schema.WEATHER(CITY VARCHAR(15),DAY VARCHAR(10),MAX_TEMP FLOAT,MIN_TEMP FLOAT);
