-- this insertion is to test deleting an entry with no foreign keys references
insert into cdt27.patrons
values (8, 'blah', 'blah', 1111111);

-- this should work
delete from cdt27.patrons
where patronid = 8;

-- this should violate a fk constraint on the loans table
delete from cdt27.patrons
where patronid = 1;

rollback;
