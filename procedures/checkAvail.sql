create or replace function GetNumAvail (bookTitle IN varchar2)
return number;
is
  numAvail number;
begin
  select count(c.copyid) into numAvail from copies c
  left join books on c.isbn = books.isbn
  where lower(books.title) = lower(bookTitle) and
  not exists(
    select copyid from loans
    where loans.copyid = c.copyid and loans.returned is null);
  return numAvail;
end;
/

set serveroutput on;
create or replace procedure CheckAvailability (bookTitle IN varchar2)
is
    numAvail number;
    availDate varchar2(10);
begin
    dbms_output.put_line(bookTitle || ' availability:');

    select count(c.copyid) into numAvail from copies c
    left join books on c.isbn = books.isbn
    where lower(books.title) = lower(bookTitle) and
    not exists(
        select copyid from loans
        where loans.copyid = c.copyid and loans.returned is null);

    if numAvail > 0 then
        dbms_output.put_line(to_char(numAvail) || ' copies of ' || bookTitle ||
            ' available.');
    else
        dbms_output.put_line('No copies available.');

        select to_char(min(loans.due), 'mm/dd/yyyy') into availDate from loans
        left join copies on loans.copyid = copies.copyid
        left join books on copies.isbn = books.isbn
        where lower(books.title) = lower(bookTitle) and loans.returned is null;

        dbms_output.put_line('Expected available on: ' || availDate);
    end if;
end;
/
