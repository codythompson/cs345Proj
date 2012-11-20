--drop table books;
create table books(
isbn number not null, constraint isbn_pk primary key(isbn),
title varchar2(80) not null,
author varchar2(80) not null,
publisher varchar2(80) not null,
publishdate date not null);
