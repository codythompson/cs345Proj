-- this should update just fine where patronid_fk and copid_fk exist in patron and copies
update cdt27.loans
set copyid = 5, patronid = 1, returned = SYSDATE, due = SYSDATE
where patronid = 6 AND copyid = 2;

-- this should fail because none of the columns in the cdt27.loans table allow nulls
update cdt27.loans
set copyid = null, patronid = null, due = null
where patronid = 1 AND copyid = 5;

-- because the two FK are referenced from other tables and if the data doesn't exist the update 
-- will fail
update cdt27.loans
set patronid = 1111, copyid = 2222
where patronid = 1 AND copyid = 5;

rollback;
