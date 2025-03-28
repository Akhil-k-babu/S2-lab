create database sample;
use sample;
create table countries (country_id int primary key, country_name varchar(50) not null, region_id int not null);
create table regions (region_id int, region_name varchar(50) not null, primary key(region_id));
insert into countries values (1, "India", 1); 
insert into countries values (2, "China", 1); 
insert into countries values (3, "USA", 4); 
select * from countries;
drop table countries;
drop table departments;
drop table regions;
create table countries (country_id int primary key, country_name varchar(50) not null, region_id int not null, foreign key (region_id) references regions(region_id));
desc countries;
desc locations;
desc departments;
desc departments;
create database sample;
use sample;
desc departments;
alter table employees rename to emp;
desc jobs;
desc locations;
alter table locations drop foreign key country_id;
alter table locations add constraint country_id foreign key (country_id) references countries(country_id) on delete CASCADE on update CASCADE;
alter table regions add column clm_name int;
desc regions;
alter table regions rename column clm_name to newcl;
desc regions;
alter table regions modify newcl varchar(10);
desc regions;
alter table regions drop newcl;
desc regions;
alter table regions drop region_id;
desc regions;
insert into regions (region_id,region_name) values
("1", "Asia"),
("4", "North America");
select * from regions;
select * from countries;
select * from regions where region_id="1";
alter table emp add column commission varchar(50);
desc emp;
select * from jobs;
select * from emp;
select * from departments;
select * from countries;
delete from regions where region_id=4;
insert into regions (region_id,region_name) values
("1", "Europe"),
("2", "Americas"),
("3","Asia"),
("4","Middle East and Africa");

INSERT INTO countries (country_id,country_name,region_id) VALUES
('AR','Argentina','2'), ('AU','Australia','3'), ('BE','Belgium','1'), ('BR','Brazil','2'),
('CA','Canada','2'), ('CH','Switzerland','1'), ('CN','China','3'), ('DE','Germany','1'),
('DK','Denmark','1'), ('EG','Egypt','4'), ('FR','France','1'), ('HK','HongKong','3'),
('IL','Israel','4'), ('IN','India','3'), ('IT','Italy','1'), ('JP','Japan','3'), ('KW','Kuwait','4'),
('MX','Mexico','2'), ('NG','Nigeria','4'), ('NL','Netherlands','1'), ('SG','Singapore','3'),
('UK','United Kingdom','1'), ('US','United States of America','2'), ('ZM','Zambia','4'),
('ZW','Zimbabwe','4');



create database company;
use company;
create table jobs (job_id varchar(10) primary key, job_title varchar(50), min_salary double(10,2),max_salary double(10,2));
create table regions(region_id varchar(10) primary key,region_name varchar(50));
create table countries(country_id varchar(10) primary key, country_name varchar(50), region_id
varchar(10) ,foreign key (region_id) references regions(region_id));
create table locations(location_id varchar(10) primary key, street_address varchar(50), postal_code
varchar(50), city varchar(50),state_province varchar(50),country_id varchar(10), foreign key
(country_id) references countries(country_id));
create table departments(department_id varchar(10) primary key, department_name varchar(50),
location_id varchar(10),foreign key (location_id)references locations(location_id));
create table employees(employee_id varchar(10) primary key, first_name varchar(50),last_name
varchar(50),email varchar(50),phone_number varchar(50), hire_date date,job_id varchar(10), salary
double(10,2), manager_id varchar(10), department_id varchar(10),foreign key (department_id)
references departments(department_id),foreign key(job_id)references jobs (job_id), foreign
key(manager_id)references employees(employee_id));
create table dependents(dependent_id varchar(10),first_name varchar(50),last_name
varchar(50),relationship varchar(50), employee_id varchar(10),foreign key (employee_id)references
employees(employee_id));
alter table departments rename dept;
alter table employees modify column salary SMALLINT;
alter table employees add commission varchar(50);
INSERT INTO regions(region_id,region_name) VALUES ('1','Europe'), ('2','Americas'), ('3','Asia'),
('4','Middle East and Africa');
INSERT INTO countries (country_id,country_name,region_id) VALUES
('AR','Argentina','2'), ('AU','Australia','3'), ('BE','Belgium','1'), ('BR','Brazil','2'),
('CA','Canada','2'), ('CH','Switzerland','1'), ('CN','China','3'), ('DE','Germany','1'),
('DK','Denmark','1'), ('EG','Egypt','4'), ('FR','France','1'), ('HK','HongKong','3'),
('IL','Israel','4'), ('IN','India','3'), ('IT','Italy','1'), ('JP','Japan','3'), ('KW','Kuwait','4'),
('MX','Mexico','2'), ('NG','Nigeria','4'), ('NL','Netherlands','1'), ('SG','Singapore','3'),
('UK','United Kingdom','1'), ('US','United States of America','2'), ('ZM','Zambia','4'),
('ZW','Zimbabwe','4');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES ('1400','2014 Jabberwocky Rd','26192','Southlake','Texas','US'), ('1500','2011 Interiors
Blvd','99236','South San Francisco','California','US'), ('1700','2004 Charade Rd', '98199',' Seattle',
'Washington','US'), ('1800','147 Spadina Ave','M5V 2L7', 'Toronto', 'Ontario', 'CA'), ('2400','8204
Arthur St',NULL,'London',NULL,'UK'), ('2500','Magdalen Centre, The Oxford Science Park',
'OX99ZB','Oxford','Oxford','UK'), ('2700','Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ('1','Public Accountant',
4200.00,9000.00), ('2','Accounting Manager',8200.00,16000.00), ('3','Administration Assistant',
3000.00,6000.00), ('4','President',20000.00,40000.00), ('5','Administration Vice President',
15000.00,30000.00), ('6','Accountant',4200.00,9000.00), ('7','Finance Manager',8200.00,16000.00),
('8','Human Resources Representative',4000.00,9000.00), ('9','Programmer',4000.00,10000.00),
('10','Marketing Manager',9000.00,15000.00), ('11','Marketing Representative',4000.00,9000.00),
('12','Public Relations Representative',4500.00,10500.00), ('13','Purchasing Clerk',2500.00,5500.00),
('14','Purchasing Manager',8000.00,15000.00), ('15','Sales Manager',10000.00,20000.00), ('16','Sales
Representative',6000.00,12000.00), ('17','Shipping Clerk',2500.00,5500.00), ('18','Stock Clerk',
2000.00,5000.00), ('19','Stock Manager',5500.00,8500.00);
INSERT INTO dept(department_id,department_name,location_id) VALUES
('1','Administration','1700'), ('2','Marketing','1800'), ('3','Purchasing','1700'), ('4','Human Resources',
'2400'), ('5','Shipping','1500'), ('6','IT','1400'), ('7','Public Relations','2700'), ('8','Sales','2500'),
('9','Executive','1700'), ('10','Finance','1700'), (11,'Accounting',1700);


INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,
job_id, salary,manager_id,department_id) VALUES (100,'Steven','King',
'steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9),
(101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21', 5,17000.00,
100,9), (102,'Lex','DeHaan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000.00,
100,9), (103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6), 
(104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6), (105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-
25',9,4800.00,103,6), (106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-
02-05',9,4800.00,103,6), (107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-
02-07',9,4200.00,103,6), (108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org',
'515.124.4569','1994-08-17',7,12000.00,101,10), (109,'Daniel','Faviet',
'daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10), 
(110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10), 
(111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00, 
108,10), (112,'Jose Manuel','Urman','josemanuel.urman@sqltutorial.org','515.124.4469','1998-03
07',6,7800.00,108,10), (113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12
07',6,6900.00,108,10), (114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12
07',14,11000.00,100,3), (115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562', 
'1995-05-18',13,3100.00,114,3), (116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563', 
'1997-12-24',13,2900.00,114,3), (117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564', 
'1997-07-24',13,2800.00,114,3), (118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565', 
'1998-11-15',13,2600.00,114,3), (119,'Karen','Colmenares','karen.colmenares@sqltutorial.org', 
'515.127.4566',' 1999-08-10',13,2500.00,114,3), (120,'Matthew','Weiss', 
'matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18',19,8000.00,100,5), (121,'Adam','Fripp', 
'adam.fripp@sqltutorial.org','650.123.2234','1997-04-10',19,8200.00,100,5), (122,'Payam', 
'Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01',19,7900.00,100,5), 
(123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10',19,6500.00, 
100,5), (126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09
28',18,2700.00,120,5), (145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10
01',15,14000.00,100,8), (146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01
05',15,13500.00,100,8), (176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03
24',16,8600.00,100,8), (177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04
23',16,8400.00,100,8), (178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05
24',16,7000.00,100,8), (179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01
04',16,6200.00,100,8), (192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02
04',17,4000.00,123,5), (193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997
03-03',17,3900.00,123,5), (200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org',
 '515.123.4444','1987-09-17',3,4400.00,101,1), (201,'Michael','Hartstein',
 'michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17',10,13000.00,100,2), 
(202,'Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','1997-08-17',11,6000.00,201,2), 
(203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07',8,6500.00,101,4), 
(204,'Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07',12,10000.00, 
101,7), (205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2, 
12000.00,101,11), (206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181','1994-06
07',1,8300.00,205,11);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES
 (1,'Penelope','Gietz','Child',206), (2,'Nick','Higgins','Child',205), (3,'Ed','Whalen','Child',200),
 (4,'Jennifer','King','Child',100), (5,'Johnny','Kochhar','Child',101), (6,'Bette','De Haan','Child',102),
 (7,'Grace','Faviet','Child',109), (8,'Matthew','Chen','Child',110), (9,'Joe','Sciarra','Child',111),
 (10,'Christian','Urman','Child',112), (11,'Zero','Popp','Child',113), (12,'Karl','Greenberg','Child',108),
 (13,'Uma','Mavris','Child',203), (14,'Vivien','Hunold','Child',103), (15,'Cuba','Ernst','Child',104),
 (16,'Fred','Austin','Child',105), (17,'Helen','Pataballa','Child',106), (18,'Dan','Lorentz','Child',107),
 (19,'Bob','Hartstein','Child',201), (20,'Lucille','Fay','Child',202), (21,'Kirsten','Baer','Child',204),
 (22,'Elvis','Khoo','Child',115), (23,'Sandra','Baida','Child',116), (24,'Cameron','Tobias','Child',117),
 (25,'Kevin','Himuro','Child',118), (26,'Rip','Colmenares','Child',119), (27,'Julia','Raphaely',
 'Child',114), (28,'Woody','Russell','Child',145), (29,'Alec','Partners','Child',146), (30,'Sandra','Taylor'
 ,'Child',176);
 select * from regions;
 alter table employees modify hire_date date;
 
 
 select country_name from countries;
 select email,phone_number from employees;
 select * from employees where last_name="Fay";
 select hire_date from employees where last_name in ("Grant","Whalen");
  select first_name,last_name,hire_date from employees where last_name in ("Grant","Whalen");
  select * from employees where department_id="8";
  select * from employees where department_id=8;
  select department_name from dept order by department_name desc;
select * from employees where last_name like "K%";
select first_name,last_name from employees where hire_date between 1995 and 1997;
select * from jobs where max_salary <5000;
select upper(email) from employees;
select concat(first_name," ",last_name) as Name from employees where hire_date=1995;
INSERT INTO employees (employee_id,first_name,last_name,department_id) VALUES 
(150,'Paul','Newton',11);
delete from dept where department_name="Shipping";

select concat(first_name," ",last_name) as Name from employeesss where dayname(hire_date)="thursday";
