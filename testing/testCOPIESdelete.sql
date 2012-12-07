-- this insertion is to test deleting an entry with no foreign keys references
insert into cdt27.
values (99, 9780140042528)

-- this should work
delete from cdt27.books
where isbn = 99;

-- this should violate a fk constraint on the loans table
delete from cdt27.books
where copyid = 3;

rollback;
