use playstoredb;

set autocommit=0;
--  LEVEL 0

-- 1. Update the rating of Google Keep and permanently save the change using COMMIT. 
update apps
set rating=4.7
where appid=1002;
commit;
-- 2. Update the price of BYJU'S Learning and cancel the change using ROLLBACK. 
select * from apps;
update apps
set price=399.0
where appid=1006;
rollback;
select * from apps;
-- 3. Insert a new application and use COMMIT to permanently save the record. 
insert into apps values
(1012,"youtube",101,201,302,4.9,10000000,0.00);
commit;
-- 4. Insert a new developer and use ROLLBACK to cancel the insertion. 
select * from devolopers;
insert into devolopers values
(107,"Origin","India",2026);
rollback;
select* from devolopers;
-- 5. Create a savepoint after updating an application's rating.
update apps
set rating=5.0
where appid=1009;
savepoint updated_ranking;

-- LEVEL-1

-- 1. Update the ratings of two applications and create a savepoint between the updates.
update apps
set rating=4.0
where appid=1010;
savepoint updated_rating;
update apps
set rating=4.0
where appid=1009;
-- 2. Perform another update and use ROLLBACK TO SAVEPOINT to undo only the changes after the savepoint. 
update apps
set rating=4.5
where appid=1009;
select * from apps;
rollback to savepoint updated_rating;
-- 3. Insert a new application, create a savepoint, update its price, and roll back to the savepoint. 
insert into apps values
(1013,"yt_music",101,201,302,4.9,10000000,0.00);
savepoint new_app;
update apps
set rating=4.5
where appid=1013;
rollback to savepoint new_app;
-- 4. Grant SELECT privilege on the Apps table to a database user. 
create user 'student1'@'localhost'
identified by 'password123';
grant select
on playstoredb.apps
to 'student1'@'localhost';
-- 5. Grant SELECT and INSERT privileges on the Apps table to a database user. 
grant select,insert
on playstoredb.apps
to 'student1'@'localhost';
show grants for 'student1'@'localhost';
-- 6. Revoke the INSERT privilege from the user.
revoke insert 
on playstoredb.apps
from 'student1'@'localhost';
show grants for 'student1'@'localhost';

-- LEVEL-2
-- 1. Perform multiple updates on the Apps table and use SAVEPOINT and ROLLBACK TO to selectively undo changes. 
update apps
set price=100.00
where appid in (1001,1002);
savepoint prices_updated;
update apps
set price=200.00
where appid in (1001,1002);
rollback to savepoint prices_updated;
select * from apps;
-- 2. Insert two records into the Categories table, create a savepoint, and then roll back to the savepoint. 
select * from categories;
insert into categories values
(307,'health',0),
(308,'body',15);
savepoint new_categories;
rollback to savepoint prices_updated;
-- 3. Grant SELECT, INSERT, and UPDATE privileges on the Apps table to a user. 
grant select,insert,update
on apps
to 'student1'@'localhost';
show grants for 'student1'@'localhost';
-- 4. Revoke the UPDATE privilege from the user.
revoke update
on apps from  'student1'@'localhost';
-- 5. Grant SELECT privilege on the Developers table and revoke the same privilege. 
grant select on devolopers to 'student1'@'localhost';
-- 6. Perform a transaction containing multiple operations and permanently save the final changes using COMMIT. 
update categories
set minimumage=3
where categoryid=307;
delete from categories 
where categoryid=308;
commit;
-- 7. Verify the effect of COMMIT and ROLLBACK by displaying the affected records.
select* from categories;
rollback;
select * from categories;
