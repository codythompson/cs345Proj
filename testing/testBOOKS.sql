-- This should insert just fine
insert into books
(isbn, title, author, publisher, publishdate)
values (654321, 'TEST BOOK', 'Test Author', 'Some Publisher', SYSDATE);

-- This should NOT insert because the PK is the same
insert into books
(isbn, title, author, publisher, publishdate)
values (654321, 'TEST BOOK', 'Test Author', 'Some Publisher', SYSDATE);

-- This should NOT insert because isbn is null
insert into books
(isbn, title, author, publisher, publishdate)
values (NULL, 'TEST BOOK', 'Test Author', 'Some Publisher', SYSDATE);

-- This should NOT insert because author is null
insert into books
(isbn, title, author, publisher, publishdate)
values (654322, NULL, 'Test Author', 'Some Publisher', SYSDATE);

-- This should NOT insert because title is null
insert into books
(isbn, title, author, publisher, publishdate)
values (654322, 'TEST BOOK', NULL, 'Some Publisher', SYSDATE);

-- This should NOT insert because publisher is null
insert into books
(isbn, title, author, publisher, publishdate)
values (654322, 'TEST BOOK', 'TEST TITLE', NULL, SYSDATE);

-- This should NOT insert because publishdate is null
insert into books
(isbn, title, author, publisher, publishdate)
values (654322, 'TEST BOOK', 'TEST TITLE', 'Some Publisher', NULL);
