CREATE DATABASE CompanyP328
USE CompanyP328

DROP TABLE Employees

CREATE TABLE Employees
(
	Id INT PRIMARY KEY,
	Name NVARCHAR(20),
	Surname NVARCHAR(20),
	Salary DECIMAL(18,2),
	Email NVARCHAR(50) UNIQUE 
)


ALTER TABLE Employees
ADD CHECK (Salary>=250)

INSERT INTO Employees(Id,Name,Surname,Salary,Email)
VALUES
(1,'Abbas','Quluzade','1200','abbas@gmail.com'),
(2,'Tural','Quluzade','270','tural@gmail.com'),
(3,'Zahir','Quluzade','300','zahir@gmail.com'),
(4,'Murad','Quluzade','280','murad@gmail.com'),
(5,'Natiq','Quluzade','2110','natiq@gmail.com'),
(6,'Eldar','Quluzade','320','eldar@gmail.com'),
(7,'Nurlan','Quluzade','450','nurlan@gmail.com'),
(8,'Orxan','Quluzade','370','orxan@gmail.com')

SELECT Email FROM Employees
WHERE (Salary>=250) AND (Salary<=500)

SELECT * FROM Employees
WHERE Salary>(SELECT AVG(Salary) FROM Employees)

SELECT * FROM Employees
WHERE Salary<(SELECT AVG(Salary) FROM Employees)

UPDATE Employees
SET Salary = (SELECT AVG(Salary) FROM Employees)
WHERE Salary<(SELECT AVG(Salary) FROM Employees)

SELECT * FROM Employees
WHERE LEN (CONCAT(Name,Surname))>10

SELECT * FROM Employees
WHERE Email LIKE '%@gmail%'

SELECT (SELECT COUNT(Salary) FROM Employees WHERE Salary>1000)*100/(SELECT COUNT(Id) FROM Employees)
