--drop table copies;
create table copies(
copyid number not null, constraint copyid_pk primary key(copyid),
isbn number not null, constraint isbn_fk foreign key (isbn) references books(isbn));
