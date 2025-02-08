-- Inner Join
select dem.employee_id,dem.first_name,age,occupation,salary
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
order by salary desc;
;

-- Outer Joins
select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id
;
select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- Self Joins
select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_id,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables togethers

select dem.employee_id,dem.first_name,gender,salary,department_name
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as dep
	on sal.dept_id = dep.department_id
order by salary desc
;









