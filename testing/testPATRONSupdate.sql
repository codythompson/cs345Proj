-- this should update just fine
update patrons
set name = 'Mark', address = '5 cool st.', telephone = 5551238888
where patron = 1;

-- this should fail because none of the columns in the patrons table allow nulls
update patrons
set patronid = null, patronid_pk = null, name = null, address = null, telephone = null
where patronid = 1;

-- this should fail because it changes the patronid_pk of an entry that other rows reference
update patrons
set patronid = 999
where patronid = 1;

rollback;
