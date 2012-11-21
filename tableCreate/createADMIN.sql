create table Admin(
  adminid number not null,
  constraint adminid_pk primary key(adminid),
  name varchar2(50) not null,
  address varchar2(80) not null,
  telephone number not null,
  superuser number(1) default 0
);
