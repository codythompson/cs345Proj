-- Here is a working test of a loans entry
insert into cdt27.loans
(copyid, patronid, returned, due)
values (6, 7, null, SYSDATE);

-- Here is a NON working test of a loans entry (no null values except for due)
insert into cdt27.loans
(copyid, patronid, returned, due)
values (null, null, null, null);

-- Here the insert does NOT work because it has a improper copyid_fk referenced

insert into cdt27.loans
(copyid, patronid, returned, due)
values (7, 7, SYSDATE, SYSDATE);

-- Here the insert does NOT work because it has a improper patronid_fk referenced

insert into cdt27.loans
(copyid, patronid, returned, due)
values (6, 8, SYSDATE, SYSDATE);

rollback;
