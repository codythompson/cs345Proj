-- This should NOT insert because this table has no column that allows nulls
insert into cdt27.admin
(adminid, name, address, telephone, superuser)
values (null, null, null, null, null);

-- This should insert just fine
insert into cdt27.admin
(adminid, name, address, telephone, superuser)
values (234, 'Mark', '5 Street', 1234567, 0);

-- This should NOT insert because the PK is the same
insert into cdt27.admin
(adminid, name, address, telephone, superuser)
values (234, 'Cody', '6 Street', 1234568, 1);

rollback;
