create database bankmanagement;
create table account_details(
Account_No int primary key auto_increment,
Account_Name varchar(50),
Adhaar_No bigint unique not null,
Pan_No varchar(12) unique,
Mobile_No bigint unique ,
PIN_No int not null,
Address varchar(50),
Open_Date timestamp default current_timestamp,
Total_Balance double
);
insert into account_details value(1200320412,'USER',213453212342,'GNEPS2341K','9514475541','0000','CHENNAI','20240521165421',0.00);
use bankmanagement;
desc account_details;
desc trasaction;
create table trasaction(
Account_No int,
Transaction_Date timestamp default current_timestamp,
Transaction_Type varchar(30),
Transaction_No varchar(20),
Transaction_Amount double,
Total_Balance double,
constraint FK_AcNo foreign key (Account_No) references account_details(Account_No)
);
