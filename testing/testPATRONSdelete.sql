-- this should work
delete from cdt27.loans
where copyid = 3 AND patronid = 1;

rollback;
