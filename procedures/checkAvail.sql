set serveroutput on;
create or replace procedure CheckAvailability (bookTitle IN varchar2)
is
    numAvail number;
    availDate varchar2;
begin
    dbms_output.putline(bookTitle || ' availability:');

    select count(c.copyid) into numAvail from copies c
    left join books on c.isbn = books.isbn
    where lower(books.title) = lower(bookTitle) and
    not exists(
        select copyid from loans
        where loans.copyid = c.copyid and loans.returned is null);

    if numAvail > 0 then
        dbms_output.putline(to_char(numAvail) || ' copies of ' || bookTitle ||
            ' available.');
    else
        dbms_output.putline('No copies available.');

        select to_char(min(loans.due), 'mm/dd/yyyy') into availDate from loans
        left join copies on loans.copyid = copies.copyid
        left join books on copies.isbn = books.isbn
        where lower(books.title) = lower(bookTitle);

        dbms_output.putline('Expected available on: ' || availDate);
    end if;
end;
/
