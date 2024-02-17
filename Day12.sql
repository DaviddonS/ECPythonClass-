create database earlycodeacademy;
use earlycodeacademy;
#constraints - primary key (a unique identifier)
# foreign key means primary key in another database
# default,
# not null means not empty
# null means liberty to leave any cell empty
# auto_increment works for only numbers and does not work for duplicate values
# unique is like default

#column must have a name, datatype and constraints
#let's create a table
create table student_reg_table(regid int primary key not null, Sname varchar(255) not null
, Sage int not null);

#add a new column to the existing table
alter table student_reg_table add column Sgender varchar(40) not null;

show columns from student_reg_table;
#adding columns to specific positions
alter table student_reg_table add column Saddress text not null after Sage;
show columns from student_reg_table;
alter table student_reg_table add column ID int null first;
show columns from student_reg_table;

#dropping a column from the existing table
alter table student_reg_table drop column ID;

#modifying the data type or constraint of a column in the existing table
alter table student_reg_table modify column Sname varchar(500);

#changing the column name in an existing table
alter table student_reg_table change column regid registrationID int;

#renaming the table name
ALTER TABLE STUDENT_REG_TABLE RENAME TO STUDENT_REGISTRATION_TABLE;
show tables;

#dropping of table
drop table STUDENT_REGISTRATION_TABLE;

use earlycodeacademy;
create table Client_info_table(ClientID int primary key not null, Cname varchar(255) not null,
Cage int not null, Cgender varchar(40) not null, Caddress varchar(200) not null, Cguardian
varchar(50) not null, Cgcontact int not null, Cminfromsch int not null);
show columns from Client_information_table;

alter table Client_info_table add column Cemail varchar(50) not null;
alter table client_info_table rename to Client_Information_Table;

alter table client_information_table drop column Cemail;

 
 create table Staff_Table(StaffID int primary key not null, StaffName varchar(100) not null,
StaffGender varchar(50) not null, StaffDOB date not null, StaffContact int not null,
StaffAddress varchar(100) not null, StaffQualification varchar(30) not null,
StaffNoSubject int not null, SubjectTaught varchar(100) not null, SClassTeacher varchar(50) not null);

show columns from Staff_Table;
alter table Staff_Table modify column StaffAddress text;

create table PaymentTable(PaymentID int primary key not null, StudentID int not null,
StudentName varchar(100) not null,  AmountPaid float not null, DateofPayment date not null,
Balance float not null);

show columns from PaymentTable;


select * from Staff_Table;
select * from client_information_table;

alter table client_information_table modify column Cgcontact varchar(11);
alter table client_information_table modify column Cminfromsch varchar(25);
alter table client_information_table modify column Caddress text;
show columns from client_information_table;

insert into client_information_table(ClientID, Cname, Cage, Cgender, Caddress, Cguardian, Cgcontact, Cminfromsch) values 
(1, 'David Don', 35 , 'Male', 'No 45 Abegyi Estate', 'Mother' , '07018838210', '30 minutes'),
(2, 'Sarah Johnson', 20, 'Female', 'No 23 Treasure Estate', 'Father' , '08034781202', '25 minutes'),
(3, 'Ben Chilwell', 29 , 'Male', 'No 28 Abatete Street', 'Mother' , '08033882190', '50 minutes'),
(4, 'Mary Earps', 25 , 'Female', 'No 14 Dunamis Close', 'Father' , '09053420901', '10 minutes'),
(5, 'Lois Lane', 23 , 'Female', 'No 4 Kunami Estate', 'Father' , '08136783408', '35 minutes'),
(6, 'Reece James', 25 , 'Male', 'No 2 Arab Close', 'Mother' , '08021389034', '15 minutes'),
(7, 'Bradley James', 20 , 'Male', 'No 33 Johnson Estate Kubwa', 'Mother' , '08014728954', '20 minutes'),
(8, 'Faith Sham', 26 , 'Female', 'No 30 Bayinde Estate', 'Father' , '09052782345', '5 minutes'),
(9, 'Andrew Alfred', 30 , 'Male', 'No 3 Keana close', 'Uncle' , '08058932456', '90 minutes'),
(10, 'Sonia Phee', 22 , 'Female', 'No 12 Olushola Estate', 'Aunty' , '08023783902', '45 minutes');

select * from client_information_table;
show indexes from client_information_table;
create index clientgender on client_information_table(Cgender); #primary key is used to retrieve single values wheres secondary key is used to retrieve multiple values
drop index clientgender on client_information_table;

select Cname, Cguardian from client_information_table;
update client_information_table set Cage = 20 where ClientID = 5;
delete from client_information_table where ClientID = 10;