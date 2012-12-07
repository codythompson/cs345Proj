-- this should update just fine
update admin
set adminid = 99, name = 'cody', address = '15 awesome st.', telephone = 6665554444, superuser = 0
where adminid = 2;

-- this should fail because none of the columns in the admin table allow nulls
update admin
set adminid = null, name = null, address = null, telephone = null
where adminid = 1;

-- this should fail because it changes the adminid_pk of an entry to an
-- existing pk
update admin
set adminid = 99
where adminid = 1;

rollback;
