
-- This should insert just fine
insert into cdt27.patrons
(patronid, name, address, telephone)
values (8, 'MARK', '5 street', '6232228888');

-- This should NOT insert because there is a same primary key as before
insert into cdt27.patrons
(patronid, name, address, telephone)
values (8, 'CODY', '7 street', '6025558888');

-- This should NOT insert because there is no column that can have null values
insert into cdt27.patrons
(patronid, name, address, telephone)
values (null, null, null, null);

rollback;
