create table student (
   sid int primary key,
   sname varchar(255) not null,
   sage int not null,
   scollege varchar(255) not null
   );
   
create table course ( 
	cid int primary key,
   cname varchar(255) not null,
   cprice decimal(10,2) not null,
   crating int  not null
);
 -- many to many mapping
 -- gopi student -  java,C#
 -- c# - siva,john
create table  studentCourceEnroll (
      student_id int ,
	  course_id int ,
      foreign key (student_id)  references student(sid),
      foreign key (course_id)  references course(cid)
      );
      
 select * from student;     
 select * from course;       
 select * from studentCourceEnroll;  
 
 insert into studentCourceEnroll values(1,101);
  insert into studentCourceEnroll values(1,102);
   insert into studentCourceEnroll values(1,103);
    insert into studentCourceEnroll values(2,102); 
    insert into studentCourceEnroll values(2,103);
     insert into studentCourceEnroll values(2,104);
      insert into studentCourceEnroll values(3,104);
   