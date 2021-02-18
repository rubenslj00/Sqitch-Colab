-- Deploy SnowProject:file2 to snowflake
-- requires: file1

USE WAREHOUSE &warehouse;

-- XXX Add DDLs here.
CREATE TABLE demo.employee(
    empid   INT        PRIMARY KEY AUTOINCREMENT,
    name  TEXT         NOT NULL,
    address  TEXT         NOT NULL,
    emailid TEXT         NOT NULL
);
Insert into demo.employee(name,address,emailid) values
('Rutuja Gholap','Pune','rutuja.gholap@snowflake.com'),
('Ankita Pawar','Nashik','ankita.pawar@snowflake.com'),
('Komal Jadhav','Mumbai','komal.jadhav@snowflake.com'),
('Gargi Kadam','Nagpur','gargi.kadam@snowflake.com'),
('Oshan Sharma','Jammu','oshan.sharma@snowflake.com');


CREATE TABLE DEMO.WEATHER(CITY VARCHAR(15),DAY VARCHAR(10),MAX_TEMP FLOAT,MIN_TEMP FLOAT);
