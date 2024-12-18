SELECT * FROM product; -- Retrieve all records from the products table

-- Display the ProductName and UnitPrice of all products.
SELECT ProductName, UnitPrice FROM product;

-- Retrieve The details of all customers from the customers table
SELECT * FROM customer;

-- Find all orders placed in 2007
SELECT * FROM salesorder
WHERE orderDate LIKE '2007%'; 

-- Retrieve all Suppliers whose country is "USA"
SELECT * FROM supplier 
WHERE country LIKE 'USA'; 

-- Display the CategoryName and Description of all Categories
SELECT CategoryName, Description FROM category;

-- Retrieve the firstName and LastName of all employees
SELECT firstName, LastName FROM employee;

-- Display all products with a unitprice greater than 50
SELECT * FROM product
WHERE unitprice > 50;

-- Find all products with UnitsInStock less than 20
SELECT * FROM product
WHERE unitsInStock < 20;

-- List all employees hired after January 1, 1995
SELECT hiredate FROM employee
WHERE hireDate > '1995-01-01';