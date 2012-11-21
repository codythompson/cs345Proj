set serveroutput on;
create or replace procedure CheckOut(patronName IN varchar2, cId IN number)
is
  dueDate date := sysdate + 14;
begin
  if not exists (select copyid from loans
                 where copyid = cId and returned is null) then
    insert into loans
    values(cId, GetPatronId(patronName), null, dueDate);

    dbms_output.put_line('Successfully Checked Out!');
  else
    dbms_output.put_line('That book is already checked out!');
  end if;
end;
/

create or replace procedure CheckIn(patronName IN varchar2, cId IN number)
is
  pId number := GetPatronId(patronName);
begin
  update loans set returned = sysdate
  where copyid = cId and patronid = pId and returned is null;
end;
/
