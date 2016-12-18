  --create database taskmanager;
  --use taskmanager;
  create table task_list
  (task_id int not null ,
  task_name varchar(100) not null,
  task_description
  varchar (100),
  task_priority varchar(20),
  task_status varchar(20),task_start_time date not null,
  task_end_time date not null,
  task_archived char default 0 ,
  CONSTRAINT task_list_pk PRIMARY KEY 
  (
    task_id 
  )
  ENABLE 
   );
  --default   false  primary key(task_id));
  insert into task_list values(1,'Gathering Requirement','Requirement Gathering','MEDIUM','ACTIVE',sysdate,sysdate + INTERVAL '3' HOUR,0);
  insert into task_list values(2,'Application Designing','Application Designing','MEDIUM','ACTIVE',sysdate,sysdate + INTERVAL '2' HOUR,0);
  insert into task_list values(3,'Implementation','Implementation','MEDIUM','ACTIVE',sysdate,sysdate + INTERVAL '3' HOUR,0);
  insert into task_list values(4,'Unit Testing','Unit Testing','LOW','ACTIVE',sysdate,sysdate + INTERVAL '4' HOUR,0);
  insert into task_list values(5,'Maintanence','Maintanence','LOW','ACTIVE',sysdate,sysdate + INTERVAL '5' HOUR,0);
  commit;
  select * from task_list;
  -- Sequence
    CREATE  SEQUENCE seq_task_id START WITH 100;
--Trigger definition:


CREATE OR REPLACE TRIGGER seq_task_id 
BEFORE INSERT ON task_list 
FOR EACH ROW

BEGIN
  SELECT seq_task_id.NEXTVAL
  INTO   :new.task_id
  FROM   dual;
END;
/