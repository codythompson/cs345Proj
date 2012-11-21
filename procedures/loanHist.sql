set serveroutput on;

create or replace function GetPatronId (patronName varchar2)
return number
is
  pId number;
begin
  select patronid into pId from patrons
  where lower(name) = lower(patronName);
  return pId;
end;
/

create or replace procedure LoanHistory (patronName IN varchar2)
is
  cursor loans_cur is
  select books.title title, loans.due due, loans.returned returned
  from loans
  left join copies on loans.copyid = copies.copyid
  left join books on copies.isbn = books.isbn
  where loans.patronid = GetPatronId(patronName)
  order by loans.returned nulls first, loans.due;
begin
  dbms_output.put_line(patronName || ' Loan History:');

  for rec in loans_cur
  loop
    dbms_output.put_line('----------------------');
    dbms_output.put_line(rec.title);
    dbms_output.put_line('DUE     : ' || to_char(rec.due, 'mm/dd/yyyy'));
    if rec.returned is null then
      dbms_output.put_line('RETURNED: STILL OUT!');
    else
      dbms_output.put_line('RETURNED: ' || to_char(rec.returned, 'mm/dd/yyyy'));
    end if;
  end loop;
  
  dbms_output.put_line('');
  dbms_output.put_line('END OF REPORT');
  dbms_output.put_line('');
end;
/
