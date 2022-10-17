create table account(
account_id number(38),
account_name char(40),
account_type nchar(255),
balance real,
password varchar2(255),
customer_id int
);
insert into account values
(101,'Tahir Kerimov','current',5937.34,'tahir905',403);
insert into account values
(102,'Selim Haciyev','savings',65000,'haciyev345',408);
insert into account values
(103,'Elvin Serifov','salary',970.45,'elvin489',null);

alter table account rename to ACCOUNT1;
alter table ACCOUNT1 rename column balance to amount;
alter table ACCOUNT1 modify account_name varchar2(255);
select * from account1;
drop table employee;

create table transactions(
transactions_id int,
transactions_name varchar(255),
transaction_history date,
customer_id number
); 
insert into transactions values
(701,'ATM',to_date('12-08-2021 08:12','dd-mm-yyyy hh:mm'),411);
insert into transactions values
(702,'charge',to_date('18-11-2022 10:34','dd-mm-yyyy hh:mm'),409);
insert into transactions values
(703,'check',to_date('29-03-2022 07:47','dd-mm-yyyy hh:mm'),403);  

alter table transactions add transactions_type long;
alter table transactions drop column transactions_type;
drop table transactions;
select * from transactions;

create table employee(  
 employee_id int,
 first_name nvarchar2(255),
 last_name nchar(255),
 birthday timestamp,
 address varchar2(90),
 email varchar2(50),
 department_id int 
 );
 
insert into employee values(601,'Zakir','Aslanov',to_timestamp('17-05-1997 10:54:12','dd-mm-yyyy hh:mm:ss'),
'R.Memmedov75A','insert into tst values('mayil.azmammadov@gmail.com'),505);
insert into employee values(602,'Elsen','Mirzeyev',to_timestamp('27-08-1998 09:24:56','dd-mm-yyyy hh:mm:ss'),
'E,Recebli5','elsen3422@gmail.com',509);
insert into employee values(603,'Natevan','Musayeva',to_timestamp('21-11-1995 02:29:09','dd-mm-yyyy hh:mm:ss'),
'E,Memmedeliyev4','natevan.m952gmail.com',null);

select * from employee;
drop table employee;
flashback table employee to before drop;
select address, birthday, birthday from employee;

create table card(
card_id number,
card_number number,
card_type char(30),
customer_id real
);
insert into card values(301,5674-6781-7489-2412,'mastercard',405);
insert into card values(302,8712-9032-6904-3891,'visa',null);
insert into card values(303,9126-5582-9045-2278,'maestro',401);

select card_id,card_type from card;

create table department(
department_id number,
department_name nchar(55)
);
insert into department values(201,'financial');
insert into department values(202,'IT');
insert into department values(203,'credit'); 

ALTER TABLE DEPARTMENT DROP COLUMN department_name;
alter table department add department_type nvarchar(255);
alter table department rename to sector;

create table branch (
branch_id int,
branch_name long,
customer_id number,
department_id real
);
drop table branch;

insert into branch values(210,'Nizami',301,506);
insert into branch values(211,'Xetai',304,566);
insert into branch values(211,'Serifzade',null,543);

alter table branch modify section nchar(50);
flashback table branch to before  drop;
alter table branch rename column branch_id to section_id;

select to_char(sysdate,'dd-mm-yyyy hh:mm:ss' ) from dual;
select sysdate from dual;
select to_timestamp(sysdate,'dd-mm-yyyy hh:mm:ss') from dual;




