create database BANK;
use bank;
create table CUSTOMERDETIAL(Acc_no int primary key , Acc_name varchar(50) not null,pin_no int unique,pan_no varchar (8)not null unique,balance int not null,address varchar(20),acc_type varchar(20)not null) ;
create table BANKDETIAL(e_id int primary key,bank_name varchar(20),IFSC_CODE int not null,branch varchar (10) not null,Phone_no int not null,pincode int not null,e_salary int not null);
insert into bankdetial values(1,"canara",11,"salem",123456,636006,25000);
insert into bankdetial values(2,"sbi",12,"attur",987654,636005,35000);
insert into bankdetial values(3,"idfc",13,"gugai",192837,636008,20000);
insert into CUSTOMERDETIAL values(12345,"naveen",1511,"nav123",25000,"salem","benificiary");
insert into CUSTOMERDETIAL values(12675,"gokul",1212,"gok123",250000,"namakkal","benificiary");
insert into CUSTOMERDETIAL values(12445,"mani",1410,"man123",50000,"salem","benificiary");
insert into CUSTOMERDETIAL values(1235,"vasanth",1507,"vas123",250090,"chennai","Joint");
select * from customerdetial;
select * from bankdetial;
SELECT
  customerdetial.Acc_no,
  customerdetial.Acc_name,
  customerdetial.balance,
  bankdetial.bank_name,
  bankdetial.IFSC_CODE
FROM
  customerdetial
INNER JOIN
  bankdetial
ON
  customerdetial.Acc_no = bankdetial.e_id;