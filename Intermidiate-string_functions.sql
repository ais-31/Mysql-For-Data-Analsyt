-- String Functions

SELECT length('skyfall');

SELECT first_name, LENGTH(first_name)
FROM parks_and_recreation.employee_demographics
ORDER BY 2;

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM parks_and_recreation.employee_demographics;

SELECT TRIM('               sky              ');
SELECT LTRIM('              sky              ');
SELECT RTRIM('              sky              ');

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM parks_and_recreation.employee_demographics;

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM parks_and_recreation.employee_demographics;

SELECT LOCATE('l', 'Djulrais');

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM parks_and_recreation.employee_demographics;

