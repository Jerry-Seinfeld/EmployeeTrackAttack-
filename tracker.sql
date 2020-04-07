Drop Database if exists employee_db;

Create Database employee_db;

USE employee_db;

Create table department_table(
	id INT AUTO_INCREMENT NOT NULL,
    name Varchar(30),
	Primary key (id)
);

Create Table role_table(
	id INT AUTO_INCREMENT NOT NULL,
	title Varchar(30), 
    salary Decimal(10,2), 
	department_id INT, 
	Primary Key (id),
    CONSTRAINT fk_department_table FOREIGN KEY (department_id) REFERENCES department_table(id) ON DELETE CASCADE
);

Create Table employee_table(
	id INT AUTO_INCREMENT NOT NULL,
	first_name Varchar(30), 
    last_name Varchar(30), 
	role_id INT, 
    CONSTRAINT fk_role_table FOREIGN KEY (role_id) REFERENCES role_table(id) ON DELETE CASCADE,
	manager_id INT,
    CONSTRAINT fk_employee_table FOREIGN KEY (manager_id) REFERENCES employee_table(id) ON DELETE SET NULL,
	Primary Key (id)
);
