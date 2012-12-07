-- this insertion is to test deleting an entry with no foreign keys references
insert into books
values (99, "test", "test", "test", SYSDATE);

-- this should work
delete from books
where isbn = 99;

-- this should violate a fk constraint on the copies table
delete from books
where isbn = 9780140042528;

rollback;
