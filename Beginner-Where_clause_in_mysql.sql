SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie'
;

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
;

SELECT * 
FROM parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
;

-- AND OR NOT -- Logikal Operators

SELECT * 
FROM parks_and_recreation.employee_demographics
where (first_name = 'leslie' AND age = 44) OR age > 55
;

-- LIKE Steatment --
-- % and _ --
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__'
;