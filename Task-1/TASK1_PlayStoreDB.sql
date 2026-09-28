create database PlayStoreDB;
use PlayStoreDB;
create table Devolopers(
DevoloperID int primary key,
DevoloperName varchar(60) not null,
Country varchar(30) ,
FoundedYear int 
);
insert into Devolopers() values
(101,"Google LLC","USA",198),
(102,"Meta Platforms","USA",2004),
(103,"Spotify AB","Sweeden",2006),
(104,"Canva Pty Ltd","Australia",2012),
(105,"BYJUS'S","India",2011);

select *from Devolopers;

create table Publishers(
PublisherID int primary key,
PublisherName varchar(60),
HeadOffice varchar(40),
SupportEmail varchar(60)
);

insert into Publishers() values
(201,"Google Play","California","support@google.com"),
(202,"Samsung Galaxy Store","Seoul","support@samsung.com"),
(203,"Hauwei AppGallery","Shenzhen","support@huawei.com"),
(204,"Amazon Appstore","Seattle","support@amazon.com");

select *from Publishers;

CREATE table Categories(
CategoryID int primary key,
CategoryName varchar(40),
MinimumAge int
);

insert into Categories() values
(301,"Education",3),
(302,"Productivity",3),
(303,"Music",12),
(304,"Social",13),
(305,"Gaming",16);

select *from Categories;

CREATE TABLE Apps (
    AppID INT PRIMARY KEY,
    AppName VARCHAR(60),
    DeveloperID INT,
    PublisherID INT,
    CategoryID INT,
    Rating DECIMAL(2,1),
    Downloads INT,
    Price DECIMAL(6,2)
);

INSERT INTO Apps() VALUES
(1001, 'Google Classroom', 101, 201, 301, 4.6, 500000000, 0.00),
(1002, 'Google Keep', 101, 201, 302, 4.5, 1000000000, 0.00),
(1003, 'Instagram', 102, 201, 304, 4.4, 500000000, 0.00),
(1004, 'Spotify', 103, 201, 303, 4.5, 1000000000, 0.00),
(1005, 'Canva', 104, 201, 302, 4.7, 500000000, 0.00),
(1006, 'BYJU''S Learning', 105, 201, 301, 4.3, 100000000, 299.00),
(1007, 'Candy Crush', 102, 204, 305, 4.6, 1000000000, 0.00),
(1008, 'Temple Run', 104, 203, 305, 4.2, 500000000, 0.00);

select *from Apps;

-- level 1

 -- 1. Insert a new developer named OpenAI from USA, founded in 2015. 
insert into Devolopers() values
(106,"OpenAI","USA",2015); 
 
 -- 2. Insert a new category named Artificial Intelligence with a minimum  age of 12. 
insert into Categories() values
(306,"Artificial Intelligence",12);

-- 3. Insert a new application named ChatGPT with suitable values for all  remaining columns. 
insert into Apps() values
(1009,"Chatgpt",106,205,306,5.0,10000000,0);

--  4. Update the rating of Temple Run from 4.2 to 4.5. 
update Apps
set Rating=4.5
where AppID=1008;

 -- 5. Delete the developer record whose DeveloperID = 105.
delete from Devolopers
where DevoloperID=105;
-- LEVEL-2

-- 1. Change the support email of Samsung Galaxy Store to a new valid  email address. 
update Publishers
set SupportEmail='support1@samsung.com'
where PublisherID=202;

-- 2. Insert two new applications of your choice into the Apps table. 
insert into Apps() values
(1010, 'Free fire', 101, 201, 301, 4.6, 500000000, 0.00),
(1011, 'chrome', 101, 201, 302, 4.5, 1000000000, 0.00);
 
 -- 3. Update the price of BYJU'S Learning to 199. 
 update Apps
 set Price=199
 where AppID=1006;
 
 -- 4. Delete the category Music from the Categories table. 
 delete from Categories
 where CategoryID=303;
 
-- 5. Display all records from the Developers, Publishers, Categories,  and Apps tables after performing all modifications. 
select * from Categories;
select * from Devolopers;
select * from Publishers;
select * from Apps;





