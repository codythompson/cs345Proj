set serveroutput on;
create or replace procedure CheckAvailability (bookTitle IN varchar2)
is
    numAval number;
begin
    dbms_output.putline(bookTitle || ' availability:');
    select count(
