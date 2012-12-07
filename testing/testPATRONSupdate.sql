-- this should update just fine
update cdt27.patrons
set name = 'Mark', address = '5 cool st.', telephone = 5551238888
where patronid = 1;

-- this should fail because none of the columns in the cdt27.patrons table allow nulls
update cdt27.patrons
set patronid = null, name = null, address = null, telephone = null
where patronid = 1;

-- this should fail because it changes the patronid_pk of an entry that other rows reference
update cdt27.patrons
set patronid = 999
where patronid = 1;

rollback;
