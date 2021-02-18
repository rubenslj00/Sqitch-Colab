-- Deploy SnowProject:prj_by_id to snowflake

USE WAREHOUSE &warehouse;

-- XXX Add DDLs here.
use schema demo;
create or replace procedure weather_procedure(City varchar,DAY varchar,PARAM_MAX FLOAT,PARAM_MIN FLOAT)
    returns string
    language javascript
    as
    $$
    var x=CITY
    var m=DAY
    var p=PARAM_MAX
    var r=PARAM_MIN
    var rs = snowflake.execute( { sqlText:
      `INSERT INTO weather("CITY","DAY","MAX_TEMP","MIN_TEMP")
           values ('${x}','${m}','${p}','${r}');`
           });
  return 'Done.';
    $$
    ;
  
call weather_procedure('Pune','Wednesday',36.99,20.99);
call weather_procedure('Goa','Wednesday',35.8,18.9);
call weather_procedure('Banglore','Wednesday',37.56,15.99);
call weather_procedure('Nasik','Wednesday',33.98,17.9);
call weather_procedure('Mumbai','Wednesday',37.8,17.69);
call weather_procedure('Solapur','Wednesday',34.7,21.56);
