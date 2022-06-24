-----------------Employee-----------------

insert into Employee 
values(01,'GHAID',0573834766,'CEO');

insert into Employee 
values(02,'RAGHAD',0577865660,'MANAGER');

insert into Employee 
values(03,'NOOR',0523468591,'TICKETSE');

insert into Employee 
values(04,'LAMA',0573457928,'ORGANIZER1');

insert into Employee 
values(05,'AHMAD',0563429263,'ORGANIZER2');

select * from Employee ; 
-------card------------------------

insert into Card 
values(0987654321,'KHALID','02/20');
insert into Card 
values(0987654312,'NIZAR','05/21');
insert into Card 
values(0987654123,'MOHAMEED','04/22');
insert into Card
values(0987651234,'ANWAR','11/19');
insert into Card 
values(0987612345,'RAWAN','10/21');
select * from Card ; 

-------------------card info------------------

insert into CardInfo   
values(99,0987654321);

insert into CardInfo   
values(98,0987654312);

insert into CardInfo   
values(97,0987654123);

insert into CardInfo   
values(96,0987651234);

insert into CardInfo   
values(95,0987612345);

select * from CardInfo ; 

-----------------customer -------------------
insert into Customer  
values(99,04,'KHALID',0566675321,'KHALID@gmail.com',0987654321);
insert into Customer  
values(98,04,'NIZAR',0555479868,'NIZAR@gmail.com',0987654312);

insert into Customer  
values(97,05,'MOHAMEED',0511134278,'MOHAMEED@gmail.com',0987654123);

insert into Customer  
values(96,04,'ANWAR',0598765551,'ANWAR@gmail.com',0987651234);

insert into Customer  
values(95,05,'RAWAN',0555479868,'RAWAN@gmail.com',0987612345);
select * from Customer ; 

------------------------ product ------------------------
insert into Product   
values(00,'Food','popcorn w/cheese',25);
insert into Product   
values(01,'Food','popcorn',20);
insert into Product   
values(02,'Drink','cola',20);
insert into Product   
values(03,'Dessert','choco Ice Cream',25);
insert into Product   
values(04,'Dessert','Twix',25);
insert into Product   
values(05,'Dessert','Sneakers',20);
insert into Product   
values(06,'Drink','Ice Tea',15);
insert into Product   
values(07,'Drink','water',5);
select * from Product ; 

-----------------------ORDER------------------
insert into Order_
values(95,00,3);
insert into Order_
values(99,01,6);
insert into Order_
values(99,06,4);
insert into Order_
values(97,05,2);
insert into Order_
values(98,07,3);

select * from Order_ ; 

---------------------seat -----------------------

insert into Seat   
values(10,'1A');
insert into Seat   
values(11,'2B');
insert into Seat   
values(13,'3C');
insert into Seat   
values(14,'2A');
insert into Seat   
values(15,'3B');

select * from Seat  ;


-------------------movie----------------------

insert into Movie
values(20,'Encanto','fantasy','PG','vettmerino','Disney');
insert into Movie
values(21,'BlckFriday','science fiction','+16','BrucCampel','MFW');
insert into Movie
values(22,'DontBrethe','horror','R','SamRaimi','ScreenGems' );
insert into Movie
values(23,'Dune','science fiction','PG','Villeneuve','CaleBoyter');
insert into Movie
values(24,'Kng Richrd','drama','PG','Marcus','AMC');

select * from Movie ; 


--------------------screen -----------------

insert into Screen 
values(00,15,'3D');
insert into Screen
values(01,15,'3D');
insert into Screen
values(02,15,'3D');
insert into Screen
values(03,15,'3D');
insert into Screen
values(04,15, '3D');

select * from Screen ;


--------------------time --------------------
insert into Time_ 
values(20,00,01,11,2021);
insert into Time_ 
values(21,01,08,11,2021);
insert into Time_ 
values(23,03,01,12,2021);
insert into Time_ 
values(22,04,10,11,2021);
insert into Time_ 
values(24,02,28,12,2021);

select * from Time_  ;

---------------------- show time ----------------------
insert into ShowT
values(20,00,'16PM');
insert into ShowT 
values(21,01,'14PM');
insert into ShowT 
values(23,03,'12AM');
insert into ShowT
values(22,04,'2AM');
insert into ShowT
values(24,02,'9AM');

select * from ShowT  ;

---------------------- ticket ---------------------
insert into Ticket 
values(15,20,00,99,'VISA',70);
insert into Ticket 
values(11,23,04,95,'CASH',100);
insert into Ticket 
values(03,22,02,98,'CASH',150);
insert into Ticket 
values(06,24,03,97,'CASH',90);
insert into Ticket 
values(13,21,01,96,'VISA',50);

select * from Ticket;
