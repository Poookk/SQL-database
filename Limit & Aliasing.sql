-- Limit & Aliasing
select *
from employee_demographics
order by age desc
limit 2,1; # limit 3;

-- Aliasing
select gender,avg(age) avg_age # or as avg_age or (as) avg_age
from employee_demographics
group by gender
having avg_age > 40;









































