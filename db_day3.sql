-- use bbk;
-- create table employees (
-- 	id int auto_increment primary key,
--     name varchar(100),
--     position varchar(100),
--     salary decimal(10,2)
-- );
-- insert into employees (name, position, salary) values ('혜린','pm', 90000);
-- insert into employees (name, position, salary) values ('가을', 'frontend',80000);
-- insert into employees (name, position, salary) values ('가을', 'backend',92000);
-- insert into employees (name, position, salary) values ('지수', 'frontend',78000);
-- insert into employees (name, position, salary) values ('민혁', 'frontend',96000);
-- insert into employees (name, position, salary) values ('하온', 'backend',130000);

-- select name,salary from employees
-- select name,salary from employees where position = 'frontend' and salary <= 90000;
-- update employees set salary = salary * 1.1 where position = 'pm';
-- select * from employees

-- update employees set salary = salary * 1.05 where position = 'backend'

-- delete from employees where name = '민혁' 
-- select position, avg(salary) as average_salary from employees group by position;
-- select * from employees

-- drop table employees;