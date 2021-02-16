-- Deploy SnowProject:file2 to snowflake
-- requires: file1

USE WAREHOUSE &warehouse;

-- XXX Add DDLs here.
CREATE TABLE demo.emp(
    empid   INT        PRIMARY KEY AUTOINCREMENT,
    name  TEXT         NOT NULL,
    address  TEXT         NOT NULL,
    emailid TEXT         NOT NULL
);
Insert into demo.emp(name,address,emailid) values
('Rutuja Gholap','Pune','rutuja.gholap@snowflake.com'),
('Ankita Pawar','Nashik','ankita.pawar@snowflake.com'),
('Komal Jadhav','Mumbai','komal.jadhav@snowflake.com'),
('Gargi Kadam','Nagpur','gargi.kadam@snowflake.com'),
('Oshan Sharma','Jammu','oshan.sharma@snowflake.com');

