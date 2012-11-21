create or replace procedure CheckOut(patronName IN varchar2, cId IN number)
is
  dueDate date := sysdate + 14;
begin
  insert into loans
  values(cId, GetPatronId(patronName), null, dueDate);
end;
/
