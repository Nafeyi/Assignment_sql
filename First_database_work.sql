CREATE DATABASE customer_infodb;
USE customer_infodb;
SHOW DATABASES;

CREATE TABLE customer_table(
CustomerID int primary key,
CustomerName VARCHAR(60),
ContactName VARCHAR(60),
Address VARCHAR(60),
City VARCHAR(60),
PostalCode VARCHAR(60),
Country VARCHAR(60)
);

SELECT * FROM customer_table;
INSERT INTO customer_table VALUES(1, "Alfreds Futterkiste", "Maria Anders", "Obere Str. 57", "Berlin", "12209", "Germany"),
(2, "Ana Trujillo Emparedadod", "Ana Trujillo", "Ava. de la Constitucion", "Mexico D.F.", "05021", "Mexico"),
(3, "Antonio Moreno Taqueria", "Antonio Moreno", "Mataderos 2312", "Mexico D.F.", "05023", "Mexico"),
(4, "Around the Horn", "Thomas Hardy", "120 Hanover Sq.", "London", "WA1 1DP", "UK"),
(5, "Berglunds Snabbkop", "Christina Berglund", "Berguvsvagen 8", "Lulea", "S.958 22", "Sweden");

alter table customer_table
drop column gender;
alter table customer_table
add Salary int;

select *
from customer_table;

UPDATE customer_table
SET salary = 30000
Where customerID = 1;

UPDATE customer_table
SET salary = 40000
Where customerID = 2;

UPDATE customer_table
SET salary = 50000
Where customerID = 3;

UPDATE customer_table
SET salary = 55000
Where customerID = 4;

UPDATE customer_table
SET salary = 60000
Where customerID = 5;

select min(salary), sum(salary), max(salary), avg(salary), count(salary)
from customer_table; --- THE USE OF AGGREGATE MIN,MAX,SUM,AVG,COUNT

select min(salary) as smallest_salary, sum(salary) total_salary, max(salary) biggest_salary, avg(salary), count(salary)
from customer_table; --- THE USE OF ALIAS (AS)

select country, sum(salary) total_salary, max(salary) biggest_salary, min(salary) smallest_salary
from customer_table
group by country;  --- FINDING THE SUM, MAX, MIN, MAX BY THE USE OF GROUP BY

select * from customer_table
ORDER BY customerName;   --- USE OF ASCENDING ORDER

select * from customer_table
ORDER BY customerName desc; --- USE OF DESCENDING ORDER
