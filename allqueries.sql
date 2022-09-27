create database dbmspr5;
show databases;
use dbmspr5;

create table Employee(emp_no int,emp_name varchar(20),date date,position 
varchar(20));

create table _master(product_no int,description varchar(20),profit_per 
float,unit_measure varchar(10),quantity int,reorder int,sell_price 
float,cost_price float,primary key(product_no));

create   table   customer(cust_no   int,cust_name   varchar(20),cust_add 
varchar(20),phone_no int,primary key(cust_no));

create    table    capital(cap_no    int,cap_name    varchar(20),state_no 
int,primary key(cap_no));

create   table   state(state_no   int,state_name   varchar(20),state_code 
int,capital varchar(20),primary key(state_no));

insert into capital values('01','MH','01');

insert into capital values('02','RAJ','02');

insert into capital values('03','GOA','03');

insert into capital values('04','GUJ','04');

insert into capital values('05','KAR','05');

insert into state values('01','MH','01','MUM');

insert into state values('02','RAJ','02','JAI');

insert into state values('03','GOA','03','PAN');

insert into state values('04','GUJ','04','SUR');

insert into state values('05','KAR','05','BAN');

select * from capital;

select * from state;

select  capital.cap_no,  state.state_no  from  capital  inner  join  state  on 
capital.cap_no=state.state_no;

UPDATE state SET state_no="78" where state_no='1';

UPDATE state SET state_no="58" where state_no='2';

UPDATE state SET state_no="46" where state_no='3';

UPDATE state SET state_no="489" where state_no='4';

UPDATE state SET state_no="458" where state_no='5';

insert into state values('05','MP','05','BHO');

select  capital.cap_no,  state.state_no  from  capital  inner  join  state  on 
capital.cap_no=state.state_no;

select  capital.cap_no,  state.state_no  from  capital  left  join  state  on 
capital.cap_no=state.state_no;

select  capital.cap_no,  state.state_no  from  capital  left  join  state  on 
capital.cap_no=state.state_name;

select  capital.cap_no,  state.state_no  from  capital  right  join  state  on 
capital.cap_no=state.state_no;

select * from capital;

select * from state;

select * from capital;

select  capital.cap_no,  state.state_no  from  capital  inner  join  state  on 
capital.cap_no=state.state_no;

select  capital.cap_no,capital.cap_name,state.capital,state.state_no from 
capital inner join state on capital.cap_no=state.state_no;

select capital.cap_no,capital.cap_name,state.capital,state.state_no 
from capital left join state on capital.cap_no=state.state_no;

select capital.cap_no,capital.cap_name,state.capital,state.state_no 
from capital right join state on capital.cap_no=state.state_no;

select  capital.cap_no,capital.cap_name,state.capital,state.state_no from 
capital   left   join   state   on   capital.cap_no=state.state_no   union 
selectcapital.cap_no,capital.cap_name,state.capital,state.state_no   from   capital 
right join state on capital.cap_no=state.state_no;

select * from capital c1, state s1 where c1.cap_no=s1.state_no;

select * from capital c1, state s1 where c1.cap_no! =s1.state_no;

select * from state where state_no=(select state_no from state where 
state_name='MH');

select * from state where state_no=(select state_no from state where 
state_name='GUJ');

select * from state where state_no=(select capital.state_no from capital 
where cap_name='MH');

select * from state where state_no=(select capital.state_no from capital 
where cap_name='GUJ');

select * from state where state_no=(select capital.state_no from capital 
where cap_name='RAJ');

select * from state where state_no=(select capital.state_no from capital 
where cap_name='KAR');

