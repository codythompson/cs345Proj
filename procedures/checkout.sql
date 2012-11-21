set serveroutput on;
create or replace procedure CheckOut(patronName IN varchar2, cId IN number)
is
  dueDate date := sysdate + 14;
  isOut number;
begin
  select count(copyid) into isOut from loans
  where copyid = cId and returned is null;

  if isOut = 0 then
    insert into loans
    values(cId, GetPatronId(patronName), null, dueDate);

    dbms_output.put_line('Successfully Checked Out!');
  else
    dbms_output.put_line('That book is already checked out!');
  end if;
end;
/
show error;

create or replace procedure CheckIn(cId IN number)
is
begin
  update loans set returned = sysdate
  where copyid = cId and returned is null;
  dbms_output.put_line('Successfully Checked In!');
end;
/
