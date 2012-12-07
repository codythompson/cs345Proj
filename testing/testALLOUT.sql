-- neither of these should work because the view spans multiple tables
insert into all_out
(copyid)
values(null);

update all_out
set copyid = 678;

rollback;
