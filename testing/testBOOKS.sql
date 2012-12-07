-- This should insert just fine
insert into cdt27.books
(isbn, title, author, publisher, publishdate)
values (654321, 'TEST BOOK', 'Test Author', 'Some Publisher', SYSDATE);

-- This should NOT insert because the PK is the same
insert into cdt27.books
(isbn, title, author, publisher, publishdate)
values (654321, 'TEST BOOK', 'Test Author', 'Some Publisher', SYSDATE);

-- This should NOT insert because this table has no column that allows nulls
insert into cdt27.books
(isbn, title, author, publisher, publishdate)
values (NULL, NULL, NULL, NULL, NULL);

rollback;
