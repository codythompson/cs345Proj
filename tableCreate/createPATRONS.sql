create table patrons(
patronid number not null,
constraint patronid_pk primary key(patronid),
fname varchar2(80) not null,
lname varchar2(80) not null
);
