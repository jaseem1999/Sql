show databases;
use world;
show tables;
create database world_cpy;
show databases;
use world_cpy;
show tables;
show databases;
create database hospital;
show databases;
use hospital;
create table emp_table(id int not null auto_increment,name varchar(26) not null,desig varchar(40) not null, age int not null,primary key (id) );
describe emp_table;
insert into emp_table(name,desig,age)value('joh','Sales',54);
select * from emp_table;
update emp_table set name = 'arun' where id =5;
alter table emp_table add PhoneNo int not null after desig;
alter table emp_table modify PhoneNo varchar(35);
alter table emp_table add Salary varchar(25) not null after desig;

insert into emp_table(name,desig,Salary,PhoneNo,age)value('Shahana','Sales','400000','8463823',28);
insert into emp_table(name,desig,Salary,PhoneNo,age)value('Raheem','Sales','200000','76383623',23);
insert into emp_table(name,desig,Salary,PhoneNo,age)value('Hashim','QC','220000','24682843',23);
insert into emp_table(name,desig,Salary,PhoneNo,age)value('Sam','Director','','',32);

update emp_table set PhoneNo = '' where id =1;
update emp_table set PhoneNo  = '98434722' where id =2;
update emp_table set PhoneNo  = '33287002' where id =3;
update emp_table set PhoneNo  = '29526645' where id =4;
update emp_table set PhoneNo  = '98352827' where id =5;

select * from emp_table where salary>390000;

select * from emp_table where salary>390000 or age>30;

select * from emp_table where salary>390000 and age>30;

select * from emp_table where (desig = 'Sales' and age<25) and salary>200000;

select * from emp_table where name like "_a%";

select * from emp_table where name not like '_a%'; 

select * from emp_table where Salary is null;

select distinct desig from emp_table;

select  count(*) from emp_table;

select * from emp_table where id>0 order by Salary desc;

select desig, count(*) from emp_table group by desig;

select desig,max(salary) from emp_table group by desig;

select desig,min(salary) from emp_table group by desig;

select desig, sum(Salary) from emp_table group by desig;

select desig, sum(salary) as "TOTAL SALARY THIS MONTH" , count(*) from emp_table group by desig;

select desig, sum(salary), count(*) from emp_table group by desig having sum(salary)>1000000;

select count(*),age,salary from emp_table group by age;

show databases;
use hospital;
select * from emp_table;

alter table emp_table modify PhoneNo varchar(25)  not null;

select char_length(name) as 'As total length' from emp_table;

select concat(name, " ",desig) from emp_table;

select concat(name, " ",desig) from emp_table where name='adil';

select insert("java is alnguage ",1,4,"python");

select lcase("JAVA");

select length("java");

select trim(" java is a language    ");

select trim('j' from 'java');

select mid("java developer ",5) from dual;

select desig,min(salary) from emp_table group by desig;

select mod(13,2);

select pi();

select pow(2,10);

select desig,sum(salary) from emp_table group by desig;

show databases;
use hospital;

select * from emp_table;

select adddate('2016/06/11 02:12:01', interval 15 minute );

select addtime('2022/06/12 02:12:20','2:10;10');

select current_date();

select current_time();

select current_timestamp();

select curdate()+1;

select date_format("3020/01/01","%y");

select now();

show databases;

create database project;

use project;

show tables;

create table team(id int not null auto_increment,team_id int,name_team varchar(26),Project_name varchar(40),email varchar(40),Department varchar(30),primary key (id) );
describe team;

alter table team add Employee_Name varchar(40) after Project_name;
insert into team(team_id,name_team,Project_name,Employee_name,email,Department)value(102,'IT supports','ABCD group','Ram K','ramk@gmail.com','IT');
insert into team(team_id,name_team,Project_name,Employee_name,email,Department)value(1011,'React Devaloper','ABCD group','John','john@gmail.com','SED');
insert into team(team_id,name_team,Project_name,Employee_name,email,Department)value(102,'Java Developer','ABCD group','lal','lal@gmail.com','SED');
insert into team(team_id,name_team,Project_name,Employee_name,email,Department)value(103,'Project Manager','ABCD group','Jhony','johny@gmail.com','PMD');
insert into team(team_id,name_team,Project_name,Employee_name,email,Department)value(1011,'Team Leader','ABCD group','Kalk','kalk@gmail.com','SED');
insert into team(team_id,name_team,Project_name,Employee_name,email,Department)value(111,'Head Of Project','ABCD group','Samson','samson@gmail.com','PMD');
insert into team(team_id,name_team,Project_name,Employee_name,email,Department)value(1011,'intern SDE','ABCD group','david K','dvdk@gmail.com','SED');

create table team2(id int not null auto_increment,team_id int,name_team varchar(26),Project_name varchar(40),email varchar(40),Department varchar(30),primary key (id) );
describe team2;
alter table team2 add Employee_Name varchar(40) after Project_name;

insert into team2(team_id,name_team,Project_name,Employee_name,email,Department)value(102,'IT supports','SSLA group','Ram K','ramk@gmail.com','IT');
insert into team2(team_id,name_team,Project_name,Employee_name,email,Department)value(1016,'React Devaloper','SSLA group','Mohan','mohan@gmail.com','SED');
insert into team2(team_id,name_team,Project_name,Employee_name,email,Department)value(102,'Java Developer','SSLA group','lal','lal@gmail.com','SED');
insert into team2(team_id,name_team,Project_name,Employee_name,email,Department)value(103,'Project Manager','SSLA group','Jhony','johny@gmail.com','PMD');
insert into team2(team_id,name_team,Project_name,Employee_name,email,Department)value(1016,'Team Leader','SSLA group','Adil','adil@gmail.com','SED');
insert into team2(team_id,name_team,Project_name,Employee_name,email,Department)value(111,'Head Of Project','SSLA group','Samson','samson@gmail.com','PMD');
insert into team2(team_id,name_team,Project_name,Employee_name,email,Department)value(1016,'intern SDE','SSLA group','raheem K','raheem@gmail.com','SED');

alter table team modify team_id int primary key;
select * from team2;

select * from team;

select team.id,team.team_id,team.name_team,team.Employee_Name,team.Department,team.Project_name,team2.Project_name
from team
inner join team2
on team.team_id=team2.team_id;

select team.id,team.team_id,team.name_team,team.Employee_Name,team.Department,team.Project_name,team2.Project_name
from team
left join team2
on team.team_id=team2.team_id;

select team.id,team.team_id,team.name_team,team.Employee_Name,team.Department,team.Project_name,team2.Project_name
from team
right join team2
on team.team_id=team2.team_id;

select team.id,team.team_id,team.name_team,team.Employee_Name,team.Department,team.Project_name,team2.Project_name
from team
left join team2
on team.team_id=team2.team_id
union
select team.id,team.team_id,team.name_team,team.Employee_Name,team.Department,team.Project_name,team2.Project_name
from team
right join team2
on team.team_id=team2.team_id;

show databases;
use hospital;
create table emp_ageAbove30(id int not null auto_increment,name varchar(26) not null,desig varchar(40) not null,Salary varchar(25) not null,
 PhoneNumber varchar(25) not null, age int not null,primary key (id) );
describe emp_demo;

insert into emp_ageAbove30(select * from emp_table where age>30);

select * from emp_demo;
select * from emp_ageAbove30;
SET SQL_SAFE_UPDATES =0;

update emp_demo set age = 60 where age in (select age from emp_table where age>30);

select * from emp_demo;


#Trigger

show databases;

create database triggers;
use triggers;

create table tri(id int not null auto_increment,name varchar(40),age int,primary key(id));

show tables;

delimiter //

create trigger ageVerify
before insert on tri
for each row
begin
if new.age<0 then set new.age=0;
end if;
End;

//
insert into tri(name,age)values('adil jaseem',10),
('ram',-34),('lal',30);

select * from tri;

create table customer(id int not null auto_increment,name varchar(40),email varchar(40),date_of_birth date,primary key(id));
create table message(id int not null auto_increment primary key,message_id int,message varchar(250));

delimiter //
create trigger cos
after insert on customer
for each row
begin
if new.date_of_birth is null then 
insert into message(message_id,message)value(new.id,concat('Hai ',new.name,' please enter your date of birth'));
end if;
End;

//

insert into customer(name,email,date_of_birth)value('adil','adil@gmail.com','2022-10-10');
insert into customer(name,email,date_of_birth)value('jaseem','jaseem@gmail.com',null);
insert into customer(name,email,date_of_birth)value('ram','ram@gmail.com','2002-04-11');
insert into customer(name,email,date_of_birth)value('sita','sita@gmail.com','2011-01-10');
insert into customer(name,email,date_of_birth)value('dom','dom@gmail.com',null);

select * from customer;

show databases;

create database std_tab;

use std_tab;

create table std_details(std_id int auto_increment primary key,student_name varchar(25),std_age int(4),std_cource varchar(25) );

describe std_details;

select * from std_details;

delete from std_details where std_id = 2;

show databases

create database emp_crud;

use emp_crud;
show tables;
describe emp_crud.product_table;
create table emp_table(id int primary key auto_increment,name varchar(20),password varchar(20),email varchar(20),country varchar(20));

describe emp_table
insert into emp_table(name,password,email,country)values("adi",'pas','a@c.c','india');
select * from emp_table;
update emp_table set name='Ram', password='ajkka', email='ram@gm.co', country='India' where id =12;
delete from emp_table where id = 15;
create table login(id int primary key auto_increment,email varchar(40),password varchar(40));
insert into login(email,password)values("ajkkalappatt@gmail.com","123");

select * from login;
DELETE FROM user_table WHERE id > 19 ;
alter table emp_table modify  id int primary key;

create table user_table(id int primary key auto_increment,name varchar(40),email varchar(50),password varchar(50));
describe user_table
select * from user_table;
delete from user_table where id >= 5;
select * from user_table where email="ry@gm.co" and password="123@Asd";

create table product_table(id int primary key auto_increment,name varchar(40),description varchar(3000),price varchar(50),offer varchar(50));
insert product_table(name,description,price,offer)values("Apple",'Apple, (Malus domestica), domesticated tree and fruit of the rose family (Rosaceae), one of the most widely cultivated tree fruits','100','20%');

insert product_table(name,description,price,offer)values("Tomato",'tomato, (Solanum lycopersicum), flowering plant of the nightshade family (Solanaceae), cultivated extensively for its edible fruits. Labelled as a vegetable for nutritional purposes, tomatoes are a good source of vitamin C and the phytochemical lycopene','20','');
insert product_table(name,img,description,price,offer)values("Orange",'https://dvineuncorked.files.wordpress.com/2011/09/orange.jpg','','70','10%');
alter table product_table add img varchar(4000) after name;
describe product_table
select * from product_table;
describe product_table;
update product_table set description = "An orange is a fruit of various citrus species in the family Rutaceae (see list of plants known as orange); it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange" where id =3;

create table user_details(id int primary key auto_increment,place varchar(40),house varchar(30),post varchar(50),landmark varchar(50),district varchar(50),state varchar(50), pin int);
	
alter table user_details add number varchar(40) after place;
select * from user_table;

alter table user_table add pin int after state;


update user_table set number='121234', place='place', house='house', homeTown='hmtTwn', post='post',district='dst', state='state', pin=221 where id=23;
update emp_table set name='Ram', password='ajkka', email='ram@gm.co', country='India' where id =12;
update user_table set number="123533", place="Thuvakkad", house="Purakkal", homeTown="Thuvakkad", post="Pannipara",district= "Malappuram", state="Kerala", pin= 123422 where id =19;
update user_table set number='"?"', place='"?"', house='"?"', homeTown='"?"', post='"?"',district='"?"', state='"?"', pin='"?"' where id ='"+id+"'


create table cart(id int primary key auto_increment, product_name varchar(30),product_price varchar(30),product_offer varchar(30), user_id int);
alter table cart add des varchar(3000) after product_name ;
describe cart
select * from cart;
insert into cart(product_name,des,img,product_price,product_offer,user_id)values('product_name+','product_description+','product_image','product_price','product_offer',3);
DELETE FROM cart where id=1;

create table admin_login(id int primary key auto_increment,name varchar(40),email varchar(50),password varchar(50));
insert into admin_login(name,email,password)values("jaseem","ajk@gmail.com","Love1999@ajk");
use emp_crud;
show tables;
select * from user_table;

describe admin_login
select * from admin_login
select * from admin_login where name = "jaseem" and email = "ajk@gmail.com" and password = "Love1999@ajk"
select * from cart
describe cart

select * from product_table

create database cricket
use cricket
create table players(id int primary key auto_increment, name varchar(30));

create table registration(id int primary key auto_increment, name varchar(30),email varchar(30), password varchar(30));
describe players 
insert into players(name)value('sachin');
insert into players(name)value('dhoni');
insert into players(name)value('kohili');

select * from players
create database ebill
use ebill
create table bills(id int primary key auto_increment, name varchar(30),consumer_no varchar(40),unit int, amount_unit int, amount int, gst int, tatal_amount int);
describe bills
select * from salary
create table salary(id int primary key auto_increment, name varchar(30),salary int,others int,salary_year int, tax int, net_salary int);
describe salary

alter table salary add salary_month int after others;
