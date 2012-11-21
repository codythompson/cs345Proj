CREATE OR REPLACE PROCEDURE NewPatron (patronName IN varchar2, patronAddr IN varchar2, patronTelephone IN number)
IS 
BEGIN
  INSERT INTO Patrons (patronid, Name, Address, Telephone)
  VALUES (patrons_next_pk(), patronName, patronAddr, patronTelephone);
END;
/
