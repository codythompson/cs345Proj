create sequence books_next_pk
start with (
    select max(books.isbn) + 1 from books)
nomaxvalue;

create sequence copies_next_pk
start with (
    select max(copies.copyid) + 1 from copies)
nomaxvalue;
