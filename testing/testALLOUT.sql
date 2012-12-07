-- none of these should work because the view spans multiple tables
insert into all_out
values(null);

update all_out
set copyid = 678;

delete from all_out;
