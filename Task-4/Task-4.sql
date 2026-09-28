use playstoredb;

--	LEVEL--0
-- 1. Find the total number of applications in the Apps table. 
SELECT COUNT(*) FROM APPS; 
-- 2. Find the average rating of all applications. 
select avg(Rating) from apps;
-- 3. Find the highest application rating. 
select max(Rating) from apps;
-- 4. Find the lowest application rating. 
select min(Rating) from apps;
-- 5. Find the total number of downloads of all applications. 
select sum(downloads) from apps;
-- 6. Display all applications ordered by rating in descending order. 
select * from apps
order by rating desc;

-- LEVEL 1

-- 1. Find the number of applications for each CategoryID. 
select categoryid,count(categoryid) from apps
group by categoryid;
-- 2. Find the average rating for each CategoryID. 
select categoryid,avg(rating) from apps
group by categoryid;
-- 3. Find the maximum and minimum price of applications. 
select max(price),min(price) from apps;
-- 4. Display applications ordered by downloads from highest to lowest. 
select * from apps
order by downloads;
-- 5. Display the number of applications for each DeveloperID. 
select developerid,count(*) from apps
group by developerid;
-- 6. Display categories having more than one application using HAVING.
select categoryid,count(*) from apps
group by categoryid
having count(*)>1;

-- LEVEL 2

-- 1. Find the total downloads for each DeveloperID.
 select developerid,sum(downloads) from apps
 group by developerid;
-- 2. Find the average rating for each PublisherID. 
select publisherid,avg(rating) from apps
group by publisherid;
-- 3. Display developers having more than one application.
select developerid,count(*) from apps
group by developerid
having count(*)>1; 
-- 4. Display categories whose average rating is greater than 4.3. 
select categoryid,avg(rating) from apps
group by categoryid
having avg(rating)>4.3;
-- 5. Display the CategoryID and total number of applications, ordered by application count in descending order. 
select categoryid,count(*) from apps
group by categoryid
order by count(*) desc;
-- 6. Find the highest-rated application in the Apps table using MAX() and  a suitable subquery.
select max(rating) from apps; 
-- 7. Display the total price of applications for each DeveloperID.
select developerid,sum(price) from apps
group by developerid;