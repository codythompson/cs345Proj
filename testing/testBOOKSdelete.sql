-- this insertion is to test deleting an entry with no foreign keys references
insert into cdt27.books
values (99, 'test', 'test', 'test', SYSDATE);

-- this should work
delete from cdt27.books
where isbn = 99;

-- this should violate a fk constraint on the copies table
delete from cdt27.books
where isbn = 9780140042528;

rollback;
