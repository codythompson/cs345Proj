drop table patrons;
create table patrons(
patronid number not null,
constraint patronid_pk primary key(patronid),
name varchar2(80) not null,
address varchar(80) not null,
telephone number not null
);
