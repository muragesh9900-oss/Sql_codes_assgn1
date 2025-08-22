
--assignment-1--
--Q1
--table
create table departments
(
	departmentid int primary key,
	departmentname varchar(50) not null unique
)


	create table students
( 
	studentid int primary key,
	name varchar(50) not null,
	age int check (age >=21),
	departmentid int foreign key  references departments(departmentid)
)


	create table courses
(
	courseid int primary key,
	coursename varchar(100) not null,
	departmentid int foreign key references departments(departmentid)
)

--created 3 tables of deprtment ,students,courses--

--Q2
--insert operating
-- dep
select * from departments

	insert into departments 
	values	(1, 'Computer Science'),
			(2, 'mechanical'),
			(3, 'electrical'),
			(4, 'civil'),
			(5, 'electronics')

select * from departments

--std

select * from students

	insert into students
	values	(1,'anil',24,1),
			(2,'sunil',22,1),
			(3,'nikil',26,2),
			(4,'suresh',23,5),
			(5,'umesh',24,1),
			(6,'naresh',21,2),
			(7,'lata',22,3),
			(8,'tara',24,4),
			(9,'vanuja',25,3),
			(10,'kirti',26,2)
	

select * from students	

--courses

select * from courses


	insert into courses 
	values 
	(1,'excel',1),
	(2,'structure',5),
	(3,'rcc',2),
	(4,'java',3),
	(5,'python',4),
	(6,'c++',1),
	(7,'pwr_bi',1),
	(8,'mech',2),
	(9,'pwr_bi',3),
	(10,'java',4),
	(11,'c++',5),
	(12,'survey',1),
	(13,'architech',2)

select * from courses

--Q3
--where opeator

select * from students where age<=25  --below 25 age students


select * from courses, departments
		where courses.departmentid = departments.departmentid
		and departments.departmentName = 'mechanical'


select * from students where age between 20 and 25   --students of age inbetween 20 to 25


--Q4
--left,right,inner joints 
-- department name with course name together

	--left joint
	select cor.*, cor.coursename, dep.departmentname 

	from courses cor
	left join departments dep
	on cor.courseid= dep.departmentid

	--inner joint

	select std.studentid, std.name, dep.departmentname

	from students std
	inner join departments dep
	on std.departmentid = dep.departmentid;

	--right joint

	select std.studentid, std.name, cour.coursename 
	
	from students std
	right join courses cour
	on cour.courseid = std.studentid

	--