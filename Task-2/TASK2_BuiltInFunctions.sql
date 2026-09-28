use PlaystoreDB;
-- level 0

-- 1. Display all developer names in uppercase. 
select upper(DevoloperName) 
from devolopers;

-- 2. Display all developer names in lowercase. 
select lower(DevoloperName)
from devolopers;

-- 3. Display the length of each application name. 
select length(AppName)
from Apps;

-- 4. Display each category name along with its length. 
select CategoryName,length(CategoryName)
from categories;

-- 5. Display the current date and current time. 
select current_date(),current_time();

-- 6. Round the ratings of all applications to 0 decimal places. 
select round(Rating,0) ,Rating
from apps;

-- level 1

-- 1. Display the application names along with their first 5 characters. 
select substring(AppName,1,5)
from Apps;

-- 2. Display the developer name and country together using CONCAT(). 
select concat(DevoloperName,' ',Country)
from devolopers;

-- 3. Display the rating of each application using ROUND(). 
select round(Rating,5)
from apps;

-- 4. Display the price of each application after applying CEIL(). 
select ceil(Price)
from Apps;

-- 5. Display the year in which each developer was founded. 
select Foundedyear
from devolopers;

-- 6. Convert the Downloads value into a suitable character representation using a conversion function. 
select convert(Downloads,char) as download_char
from apps;

-- level 2

-- 1. Display each application name in uppercase along with its rating. 
select upper(AppName),Rating 
from apps;
-- 2. Display the first 3 characters of each category name. 
select substring(CategoryName,1,3)
from categories;

-- 3. Display the absolute difference between the application price and 200. 
select abs(Price-200) 
from apps;

-- 4. Display the developer name and its length. 
select DevoloperName,length(DevoloperName)
from devolopers;

-- 5. Display the current date and current timestamp. 
select current_date(),current_timestamp();

-- 6. Use CAST() or CONVERT() to convert a numeric value into a character value. 
select cast(FoundedYear as char) as year_text
from devolopers;
