-- this should update just fine where patronid_fk and copid_fk exist in patron and copies
update loans
set copyid = 5, patronid = 1, returned = SYSDATE, due = SYSDATE
where patronid = 6 AND copyid = 2;

-- this should fail because none of the columns in the loans table allow nulls
update loans
set copyid = null, patronid = null, due = null
where patronid = 6 AND copyid = 2;

-- because the two FK are referenced from other tables and if the data doesn't exist the update 
-- will fail
update loans
set patronid = 1111, copid = 2222
where patronid = 6 AND copid = 2;

rollback;
