-- This should NOT insert because this table has no column that allows nulls
insert into cdt27.copies
(copyid, isbn)
values (null, null);

-- This should insert just fine
insert into cdt27.copies
(copyid, isbn)
values (7, 9780140042528);

-- This should NOt insert because the PK is the same as above
insert into cdt27.copies
(copyid, isbn)
values (7, 9780140042528);

-- Here is a working test of a books entry
insert into cdt27.books
(isbn, title, author, publisher, publishdate)
values (654321, 'TEST BOOK', 'Test Author', 'Some Publisher', SYSDATE);

-- Here the insert does work because it has a proper ISBN referenced
insert into cdt27.copies
(copyid, isbn)
values (8, 654321);

-- Here the insert does NOT work because it has a improper ISBN referenced
insert into cdt27.copies
(copyid, isbn)
values (9, 44444);

rollback;
