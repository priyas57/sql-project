create database bank;
use bank;
create table employee(e_id int , e_name varchar(30)not null,e_age int check (e_age>=18) ,e_salary int, branch_name varchar(30),b_id int);
insert into employee values(1001,"john",20,20000,"indian",1);
insert into employee values(1002,"ram",22,25000,"state",2);
insert into employee values(1003,"guru",19,30000,"karur",3);
insert into employee values(1004,"priya",21,35000,"indian",4);
insert into employee values(1005,"dhana",24,40000,"state",5);
insert into employee values(1006,"sree",26,45000,"asian",6);
insert into employee values(1007,"deepika",20,28000,"state",7);
insert into employee values(1008,"shobitha",23,29000,"indian",8),(1009,"narmatha",26,43000,"state",9);
insert into employee values(1010,"saravanan",30,29500,"karur",10);

create table customer (c_name varchar(50)not null,accno int,pin int,balance int,pan varchar(50)unique,
acc_type varchar(40)default "unassigned",contactno varchar(40),customer_addr varchar(40),b_id int );
insert into customer values("nivi",1234,9087,30000,"ni398","saving account","7845296429","abcd street",3);
insert into customer values("latha",3452,6954,25000,"lat473","current account","8463872902","xy street",5);
insert into customer values("vijay",2580,5060,10000,"vij876","current account","9374638964","je street",7);
insert into customer values("Riya",9534,7539,39000,"ri088","saving account","6397256442","we street",2);
insert into customer values("priya",1475,3064,40000,"pri860","current account","9829542854","nt street",10);
insert into customer values("sree",5603,4309,15000,"sr095","saving account","9430238543","ut street",6);
insert into customer values("sankar",5853,9054,50000,"san870","current account","9296439854","yuth street",8);
insert into customer values("gopi",5643,6408,28000,"go765","saving account","6354472854","go street",4);
insert into customer values("praveen",5954,9760,70000,"pra754","saving account","6308544387","ht street",9);
insert into customer values("hari",7585,7945,35800,"ha067","current account","9475391053","uth street",1);

select *from employee;
select * from customer;

select customer.c_name,customer.pan,customer.acc_type,customer.customer_addr,customer.accno from customer inner join employee on employee.b_id=customer.b_id order by customer.c_name;




