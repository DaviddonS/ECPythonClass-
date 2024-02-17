use j_waec_system;
alter table student_score drop column StudentID;
alter table student_score add column StudentID int primary key not null auto_increment first;
select * from student_score;
show indexes from student_score;

alter table student_activities add column StudentID int primary key not null auto_increment first;
select * from student_activities;
alter table student_personal_information add column StudentID int primary key not null auto_increment first;
select * from student_personal_information;
#you cant join two tables that dont have the same matching ID

#mysql conditions
select * from studentper;
#and is used to make sure both statements are true
select * from studentper where (age = 12 and age <=13) and schoolsup = 'yes';

#or is used to pick either of the statements
select * from studentper where guardian = 'father' or traveltime >=2;

select * from studentper where (age = 12 and age <=13 ) or schoolsup = 'yes';

#between is used to select range
select * from studentper where JS1_1st_term between 25 and 60;
select * from studentper where JS1_1st_term  not between 25 and 60;

#checking if a row is empty or not
select * from studentper where famsup is null;
select * from studentper where famsup is not null;

#Like is used like a seach pattern
select * from studentper where Mjob like 'C%'; #find mother job that starts with Letter C
select * from studentper where Mjob like '%R'; #find mother job that ends with Letter R
select * from studentper where Mjob like '__s%'; #find mother job where the third letter is letter S
select * from studentper where Mjob like '______'; #find mother job where the length is 5


#mysql join
#inner join will honour the table with lesser records
select student_personal_information.sex, student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS1_1st_term, student_score.JS1_2nd_Term, student_score.JS1_3rd_Term from student_personal_information inner join student_score
on student_personal_information.StudentID = student_score.StudentID;

#right join will not honour the table with lesser records but will return null when the table record is not up to date
select student_personal_information.sex, student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS1_1st_term, student_score.JS1_2nd_Term, student_score.JS1_3rd_Term from student_personal_information right join student_score
on student_personal_information.StudentID = student_score.StudentID;

#left join works the same way inner join works i.e honours the table with lesser records
select student_personal_information.sex, student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS1_1st_term, student_score.JS1_2nd_Term, student_score.JS1_3rd_Term from student_personal_information left join student_score
on student_personal_information.StudentID = student_score.StudentID;

#cross join will likely return an error because of its nature, it only workds on smaller records
select student_personal_information.sex, student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS1_1st_term, student_score.JS1_2nd_Term, student_score.JS1_3rd_Term from student_personal_information cross join student_score
on student_personal_information.StudentID = student_score.StudentID;




#Employee system database
create database Employee_system;
use Employee_System;

#calculating average age of the employees
select avg(Age) as Average_Age from hr_analytics;

#calculating how many employees that left the company which is attrition
select distinct Attrition from hr_analytics order by Attrition;
select Attrition, count(Attrition) as result from hr_analytics where Attrition = 'Yes';

#calculate how often employees travel
select * from hr_analytics;
select distinct BusinessTravel from hr_analytics;
select BusinessTravel, count(BusinessTravel) as Travel_Rate from hr_analytics group by BusinessTravel;

#calculate the average daily rate
select avg(DailyRate) as AverageDailyRate from hr_analytics;

#how many employees work in each department
select distinct Department from hr_analytics;
select Department, count(Department) as Department from hr_analytics group by Department;

#average distance from home for employees
select avg(DistanceFromHome) as AverageDistance from hr_analytics;

#how many employees have a certain level of education
select distinct Education from hr_analytics;
select Education, count(Education) as LevelOfEducation from hr_analytics group by Education order by Education;

#find what education field is the most popular
select distinct EducationField from hr_analytics;
select EducationField, count(EducationField) as FieldofEducation from hr_analytics group by EducationField order by FieldOfEducation desc limit 1;
select EducationField, count(EducationField) as FieldofEducation from hr_analytics group by EducationField order by FieldofEducation DESC limit 1;




#distribution of age across each department
select distinct Department from hr_analytics;
select Department, avg(Age) from hr_analytics group by Department;

#average monthly income of employees based on their job role and job level
select distinct JobRole from hr_analytics;
select JobRole, avg(MonthlyIncome) from hr_analytics group by JobRole;
select JobLevel, avg(MonthlyIncome) from hr_analytics group by JobLevel order by JobLevel;

#What is the average work life balance of employees in each department?
select Department, avg(WorkLifeBalance) from hr_analytics group by Department;

#What is the average environment satisfaction of employees based on their job role?
select JobRole, avg(EnvironmentSatisfaction) from hr_analytics group by JobRole;

#How does the years at company vary among employees in each job role and job level?
select distinct YearsAtCompany from hr_analytics order by YearsAtCompany;
#select YearsAtCompany, count(JobRole) as JobRole from hr_analytics group by YearsAtCompany order by YearsAtCompany;

#What is the average job satisfaction of employees based on their marital status?
select MaritalStatus, avg(JobSatisfaction) from hr_analytics group by MaritalStatus;

#How does the relationship satisfaction of employees vary based on their job role and job level?
select distinct RelationshipSatisfaction from hr_analytics;
select JobRole, count(JobRole) from hr_analytics group by JobRole;


#What is the distribution of employee count in each department?
select distinct EmployeeCount from hr_analytics;
select Department, count(EmployeeCount) from hr_analytics group by Department;

#How does the standard hours vary based on job role and job level?
select distinct StandardHours from hr_analytics;


#What is the average job involvement of employees based on their gender?
select distinct JobInvolvement from hr_analytics;
select Gender, avg(JobInvolvement) as AverageJobInv from hr_analytics group by Gender;

#How does the average hourly rate of employees vary based on their job role and job level?
select distinct HourlyRate from hr_analytics;
select JobRole, avg(HourlyRate) from hr_analytics group by JobRole;
select JobLevel, avg(HourlyRate) from hr_analytics group by JobLevel;

#What is the average distance from home of employees based on their job role and job level?
select JobRole, avg(DistanceFromHome) from hr_analytics group by JobRole;
select JobLevel, avg(DistanceFromHome) from hr_analytics group by JobLevel order by JobLevel;

#How does the average stock option level of employees vary based on their job role and job level?
select JobRole, avg(StockOptionLevel) from hr_analytics group by JobRole;
select JobLevel, avg(StockOptionLevel) from hr_analytics group by JobLevel order by JobLevel;


#What is the average training times last year of employees based on their job role and job level?
select JobRole, avg(TrainingTimesLastYear) from hr_analytics group by JobRole;
select JobLevel, avg(TrainingTimesLastYear) from hr_analytics group by JobLevel order by JobLevel;


#How does the average total working years of employees vary based on their job role and job level?
select JobRole, avg(TotalWorkingYears) from hr_analytics group by JobRole;
select JobLevel, avg(TotalWorkingYears) from hr_analytics group by JobLevel order by JobLevel;


#What is the average years since last promotion of employees based on their job role and job level?
select JobRole, avg(YearsSinceLastPromotion) from hr_analytics group by JobRole;
select JobLevel, avg(YearsSinceLastPromotion) from hr_analytics group by JobLevel order by JobLevel;


