-- this should update just fine
update books
set title = 'blah', author = 'blah', publisher = 'blah', publishdate = SYSDATE
where isbn = 9780140042528;

-- this should fail because none of the columns in the books table allow nulls
update books
set isbn = NULL, title = NULL, author = NULL, publisher = NULL, publishdate = NULL
where isbn = 9780140042528;

-- this should fails because it changes the isbn of an entry that other rows
-- reference
update books
set isbn = 111
where isbn = 9780140042528;

rollback;
