create or replace procedure CheckAvailability (bookTitle IN varchar2)
is
    numAval number;
begin
    select 
