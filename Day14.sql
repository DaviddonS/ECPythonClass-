#sql is mainly for data manipulation and performing aggregate functions
#Exporting data
create database J_Waec_System;
use J_Waec_System;
 #sql clause
 #from points to where the change will be done, where points to where the change will take place 
 
 #order by clause
 select sex, age, address from studentper order by age; #ordering age in ascending order
 select sex, age, address from studentper order by age desc;
 
 #distinct clause provides values in a particular columns that make it unique
 select distinct age from studentper order by age;
 
 #group by clause works with an aggregate function [min, max, count, sum, first, last, avg]
 select Mjob, avg(JS1_1st_term) from studentper group by Mjob;
 select Mjob, min(JS1_1st_term) from studentper group by Mjob;
select Mjob, max(JS1_1st_term) from studentper group by Mjob;
select Mjob, count(JS1_1st_term) from studentper group by Mjob;
 select Mjob, sum(JS1_1st_term) from studentper group by Mjob;
select * from studentper limit 2; #first 2
select * from studentper order by age desc limit 2; # last 2
 
 
 #mysql control flow program
select age, sex, JS1_1st_term, if(JS1_1st_term >= 90, 'Yes', 'No') as Result from studentper;

select age, sex, JS1_1st_term, JS1_2nd_Term, ifnull(JS1_1st_term, JS1_2nd_Term) as result from studentper; #returning null if both columns are empty, else returns the first column if it present or the second column

#null if returns null if  both columns are the same 
select age, sex, JS1_1st_term, JS1_2nd_Term, nullif(JS1_1st_term, JS1_2nd_Term) as result from studentper;
#case statements
select age, sex, famsize, address, JS3_2nd_Term,
	case
		when JS3_2nd_Term >= 70 and JS3_2nd_Term <= 100 then 'A'
		when JS3_2nd_Term >= 60 and JS3_2nd_Term <= 69.99 then 'B'
        when JS3_2nd_Term >= 50 and JS3_2nd_Term <= 59.99 then 'C'
        when JS3_2nd_Term >= 40 and JS3_2nd_Term <= 49.99 then 'D'
        when JS3_2nd_Term >= 70 and JS3_2nd_Term <= 100 then 'E'
        else 'F'
	end as GRADE from studentper;
    
    create table student_personal_information select sex,age,address,famsize,Pstatus,Medu,Fedu,Mjob,Fjob,guardian from studentper;
    create table student_activities select traveltime,studytime,paid,health,activities,Emotions,famsup,schoolsup,internet from studentper;
    create table student_score select JS1_1st_term,JS1_2nd_Term,JS1_3rd_Term,JS2_1st_Term,JS2_2nd_Term,JS2_3rd_Term,JS3_1st_Term,JS3_2nd_Term from studentper;
    select * from student_score;