-- Group By --

SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT *
FROM parks_and_recreation.employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
group by gender
;

SELECT occupation, salary
FROM parks_and_recreation.employee_salary
group by  occupation, salary
;


-- ORDER BY --

SELECT *
FROM parks_and_recreation.employee_demographics
order by gender, age
;