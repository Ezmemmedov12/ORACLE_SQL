create table person(
first_name nvarchar2(255),
last_name char(50),
address_line varchar2(255),
city nchar(50),
state_code long not null,
postal_code number,
check (postal_code>98020),
constraint pc_city unique(city)
);

insert into person values ('Ben','Miller','101 Candy Rd','Redmond','WA',98052);
insert into person values('Gtabe','Mares','1061 Buskrik Way','Bothell','CA',98104);
insert into person values ('Garrett','Vargas','10203 Acom Avenue','Calgary','AB',98030);

alter table person drop constraint pc_name;
alter table person add constraint pc_code primary key(postal_code);
alter table person drop unique(city);
alter table person add unique(city);
alter table person disable unique(city);
alter table person rename constraint pc_name to name_of_pc;

drop table person;
select * from person;

delete  from person where postal_code in(max(postal_code),min(postal_code));

select max(postal_code),min(postal_code) from person;

create table product(
product_id int primary key,
product_name varchar2(255) null,
product_number nvarchar2(50),
product_color char(55),
safety_level number,
constraint pc_level check (safety_level between 5000 and 15000)
);
insert into product values(1,'Adjustable Race','AR-5381','null',1000);
insert into product values(2,'Beaning Ball','BA-8327','black',9300);
insert into product values(3,'Blade','CA-2377','yellow',5400);

select * from product

alter table product disable constraint pc_level;
alter table product add constraint pc_number unique(product_number);
alter table product drop primary key;
alter table product modify product_id primary key;

drop table product;

create table employee(
employee_id int,
employee_name varchar2(50),
employe_gender char(50) check (employe_gender like 'm%'),
employee_mobile number unique, 
employee_email nvarchar2(255),
employee_city nchar(30),
primary key(employee_city,employee_mobile),
constraint emp_mob_pc check(employee_mobile like '%1')
);
alter table employee drop constraint emp_mob_pc;
alter table employee modify employee_name not null;
alter table employee disable primary key;
ALTER table employee disable constraint emp_mob_pc;

insert into employee values(21,'Samir','male',+994708946271,'samirty35@gmail.com','Baku');
insert into employee values(22,'Elxan','male',+994508625163,'haciyev2elxan@gmail.com','Gence');
insert into employee values(23,'Elnure','female',+994553526718,'elnure.45wer@gmail.com','Lenkeran');

drop table employee;

SELECT * FROM employee;

create table car(
car_id int primary key not null,
car_name varchar2(50),
car_company char(50),
car_power float,
car_color char(50),
car_model number
);
insert into car values(1,'Corrolla','Toyota',1.8,'red',1995);
insert into car values('Mustang','Ford',5,'blue',1997);
insert into car values('Prius','Toyota',3.2,'black',1999);

alter table car drop primary key;
alter table car add primary key(car_model);
alter table car modify car_color check(car_color='red');
alter table car add unique(car_power);
alter table car add car_number real primary key;

create table student(
student6_id int primary key not null,
student_name nvarchar2(255),
student_age number,
student_birthdsy date,
student_mail varchar2(255) unique
);
insert into student values(101,'Sahil',19,to_date('12-03-2003','dd-mm-yyyy'),'sahilore@22gmail.com');
insert into student values(102,'Arif',22,to_date('23-09-2000','dd-mm-yyyy'),'arifvert@gmail.com');
insert into student values(103,'Aqif',21,to_date('25-02-2001','dd-mm-yyyy'),'AqiF@gmail.com');

alter table student add  constraint student_age_pc check (student_age>19);
alter table student  modify student_mail  not null;
alter table student drop unique (student_mail);
alter table student disable primary key;
alter table student rename constraint student_age_pc  to age_pc;

drop table student;

select * from user_constraints where table_name='person';
select * from user_constraints where constraint_name=upper('age_pc');

// Task// 2 ve daha artiq sutuna eyni constraint elevae edilmesi//

create table customer(
customer_id int,
customer_name varchar2(255),
customer_age number,
customer_gender char(50),
customer_salary real,
customer_mail nvarchar2(250)
);
alter table customer add constraint pc_constr unique(customer_id,customer_mail);

//constraintin inline and outline modify edilmesi//

create table customer2(
customer_id int primary key,
customer_name varchar2(255),
customer_age number,
customer_gender char(50),
customer_salary real,
customer_mail nvarchar2(250),
constraints con_mail_cus unique (customer_mail)
);
 //inline//
 alter table customer2  modify customer_id int check(customer_id>0);
 //outline//
 alter table customer2 modify customer_mail constraints con_mail_cus2  check (customer_mail like '%com');

select * from sys.currency;



