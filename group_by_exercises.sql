use titles;

use employees;

select DISTINCT title from titles;

select last_name from employees
where last_name like 'E%' and last_name like '%E'
group by last_name ASC;

select last_name, first_name from employees
where last_name like 'E%' and last_name like '%E'
group by last_name, first_name;

select count(last_name) from employees
where last_name like '%q%' and last_name not like '%qu%'
order by last_name;

select count(gender), gender from employees
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
group by gender;