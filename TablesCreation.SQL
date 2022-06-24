create table Employee (
Employee_ID number(2),
EName varchar2(20) not null,
EphoneNumber number(10) not null,
Position_ varchar2(10) not null,
primary key (Employee_ID));

create table CardInfo (
Customer_ID number(2),
CardNo number(10),
primary key (Customer_ID,CardNo));

create table Card(
CardNo number(10),
Cardholder varchar2(10) not null,
EXPdate varchar2(10) not null,
primary key (CardNo));

create table Customer (
Customer_ID number(2),
Employee_ID number(2),
Cname varchar2(20) not null,
CphoneNumber number(10) not null,
Cemail varchar2(25),
CardNo number(10),
primary key (Customer_ID),
foreign key (Employee_ID) references Employee(Employee_ID),
foreign key (CardNo) references Card(CardNo));

create table Product (
Product_ID number(2),
Type_ varchar2(10) not null,
Description varchar2(20) not null,
Unit_Price number(3) not null,
primary key (Product_ID));

create table Order_ (
Customer_ID number(2),
Product_ID number(2),
QTY number(2) not null,
primary key (Customer_ID,Product_ID));

create table Seat (
Ticket_No number(2),
SeatNumber varchar2(2) not null,
primary key (Ticket_No));

create table Movie (
Movie_ID number(2),
Title varchar2(10) not null,
Genre  varchar2(20) not null,
AgeRate  varchar2(3) not null,
Director  varchar2(10) not null,
Production  varchar2(10),
primary key (Movie_ID));

create table Screen (
Screen_ID number(2),
NoOfSeats number(2) not null,
TypeOfScreen varchar2(5) not null,
primary key (Screen_ID) );

create table Time_ (
Movie_ID number(2),
Screen_ID number(2),
Day_ number(2) not null,
Month_ number(2) not null,
Year_ number(4) not null,
primary key (Movie_ID,Screen_ID));

create table ShowT (
Movie_ID number(2),
Screen_ID number(2),
ShowTime varchar2(5) not null,
primary key (Movie_ID,Screen_ID));

create table Ticket (
Ticket_No number(2),
Movie_ID number(2),
Screen_ID number (2),
Customer_ID number(2),
PaymentMethod varchar2(10) not null,
Price number(3) not null,
foreign key (Customer_ID) references Customer(Customer_ID),
foreign key (Screen_ID) references Screen(Screen_ID),
foreign key (Movie_ID) references Movie(Movie_ID),
primary key (Ticket_No));
