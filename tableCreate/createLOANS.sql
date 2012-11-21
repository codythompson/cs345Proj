drop table loans;
create table loans(
copyid number not null,
constraint copyid_fk foreign key(copyid) references copies(copyid),
patronid number not null,
constraint patronid_fk foreign key(patronid) references patrons(patronid),
returned date null,
due date not null
);
