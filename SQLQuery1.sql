create table employeedob
(employeeid int
, employeeDOB date
)

insert into employeedob(employeeid,employeeDOB)
select 1, GETDATE()-7000 union all
select 2, GETDATE()-7300 union all
select 3, GETDATE()-7600 union all
select 4, GETDATE()-7900 union all
select 5, GETDATE()-7400 

select * from employeedob
select * from Employee

--inner join

select emp.*, edob.employeedob
from employee as emp
inner join employeedob as edob
on edob.employeeid = emp.employeeid

     --the right table

select *
from employee as emp
left join employeedob as edob
on edob.employeeid = emp.employeeid

--full outer join

select *
from employee as emp
full outer join employeedob as edob
on edob.employeeid = emp.employeeid
where emp.employeeid is null or edob.employeeid is null

-- cross join 

select * from employee as emp
cross join employeedob as edob  ----not giving on condition in this quary 

--delet and update 

create table months(monthnm varchar(10))

insert into months(monthnm)
select 'jan' union all
select 'feb' union all
select 'mar' union all
select 'apr' union all
select 'may' union all
select 'jun' union all
select 'jul' union all
select 'aug' union all
select 'sep' union all
select 'oct' union all
select 'nov' union all
select 'dec' 

select employeefirstname, employeelastname, monthnm
select * from employee 
cross join months 

select *
into employee_backup 
from employee 

select *from employee_backup

