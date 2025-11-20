-- CTEs --


WITH CTE_Example (Gender, AVG_sal, Max_sal, Min_sal, Count_sal) AS
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, Count(salary) count_sal
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example;



WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985,-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;

