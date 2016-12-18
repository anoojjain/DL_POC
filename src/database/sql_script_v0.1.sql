create table application(app_id int primary key,app_name varchar(100) not null,app_desc varchar(300));

create table app_batch
    (batch_id int primary key, batch_nm varchar(100) not null, 
      batch_desc varchar(300), frequency varchar(100), freq_type int not null, 
      exec_order int, app_id int not null);
      
create table job_level_info(level_id int primary key, level_name varchar(100));

create table job(job_id int primary key,job_name varchar(100) not null, job_desc varchar(200), exec_order int, batch_id int not null
  ,job_level int);

create table task_source(source_id int primary key, source_name varchar(100), source_type varchar(100), frequency varchar(100),frequency_type int,feed_type varchar(100));
  
create table task(task_id int primary key, task_name varchar(100), task_desc varchar(200), exec_order int, job_id int not null,
source_id int);

create table invoke_script(invoke_type varchar(100), invoke_script varchar(100), description varchar(200), task_id int);

create table task_parameter(parameter_name varchar(200), parameter_value varchar(200), task_id int);