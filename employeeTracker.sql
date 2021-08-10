DROP DATABASE IF EXISTS employee_trackerDB; 

CREATE DATABASE employee_trackerDB; 

USE employee_trackerDB; 

CREATE TABLE department ( 
id INT PRIMARY KEY AUTO_INCREMENT, 
_name VARCHAR(30) NOT NULL
);
CREATE TABLE _role ( 
id INT PRIMARY KEY, 
title VARCHAR(30) NOT NULL, 
salary DECIMAL, 
department_id INT, 
FOREIGN KEY (department_id)
        REFERENCES department(id)
        ON DELETE CASCADE  
); 
CREATE TABLE employee (
id INT PRIMARY KEY AUTO_INCREMENT, 
first_name  VARCHAR(30), 
last_name VARCHAR(30), 
role_id INT, 
manager_id INT, 
FOREIGN KEY (role_id)
        REFERENCES _role (id)
        ON DELETE CASCADE, 
FOREIGN KEY (manager_id)
        REFERENCES employee(id)
        ON DELETE CASCADE
);