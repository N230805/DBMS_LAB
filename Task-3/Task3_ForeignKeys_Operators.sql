use PlayStoreDB;

-- level-0
-- 1. Add a foreign key from Apps.DeveloperID to Developers.DeveloperID. 
ALTER TABLE apps 
ADD CONSTRAINT fk_developer 
FOREIGN KEY (DeveloperID) 
REFERENCES devolopers(DevoloperID); 

-- 2. Add a foreign key from Apps.PublisherID to Publishers.PublisherID. 
alter table apps
add constraint fk_publisher
foreign key (PublisherID)
references publishers(PublisherID);

select * from apps;
select * from categories;
-- 3. Add a foreign key from Apps.CategoryID to Categories.CategoryID. 
alter table apps
add constraint fk_category
foreign key(CategoryID)references categories(CategoryID);

-- 4. Display applications having a rating greater than 4.5. 
select * from apps
where Rating>4.5;


-- 5. Display applications whose price is equal to 0. 
select * from apps
where Price=0.0;

-- 6. Display applications belonging to CategoryID = 305. 
select * from categories
where CategoryID=305;

-- level 1
-- 1. Display applications with downloads greater than 500000000.
select * from apps
where Downloads>500000000;
 
-- 2. Display applications having a rating between 4.3 and 4.7. 
select * from apps
where Rating>4.3 and Rating<4.7;
 select * from apps 
 where Rating between 4.3 and 4.7;
 
-- 3. Display applications whose price is either 0 or 299 using IN. 
select * from apps
where Rating in(0,299);

-- 4. Display applications whose names start with G using LIKE. 
select * from apps
where AppName like 'G%';

-- 5. Display applications whose names contain the word Google. 
select* from apps
where AppName like 'Google%';

-- 6. Display applications having a rating greater than 4.0 AND downloads greater than 500000000. 
select* from apps
where Rating>4.0 and Downloads>500000000;

-- 7. Display applications belonging to CategoryID = 301 OR CategoryID = 305. 
select * from apps
where CategoryID in(301,305);
 
 -- level 2
 -- 1. Display applications whose names do not start with G. 
 select * from apps
 where AppName not like 'G%';
  
-- 2. Display applications with ratings less than 4.5 or downloads greater than 1000000000. 
select * from apps
where Rating<4.5 or Downloads>1000000000;

-- 3. Display developers whose names contain the letter a. 
select * from devolopers
where DevoloperName like '%a%';

-- 4. Display applications with prices between 0 and 300. 
select * from apps
where Price between 0 and 300;

-- 5. Display applications whose PublisherID is either 201 or 204. 
select * from apps
where PublisherID in (201,204);

-- 6. Attempt to insert an application with a DeveloperID that does not exist in the Developers table and observe the effect of the foreign key. 
insert into apps() values
(1025, 'Classroom', 110, 201, 301, 4.6, 500000000, 0.00);
-- it gives cannot update a child row ;foreign key constraint fails

-- 7. Display all applications whose CategoryID is not 305.
select * from apps
where CategoryID!=305;

select * from apps 
where  not CategoryID=305;