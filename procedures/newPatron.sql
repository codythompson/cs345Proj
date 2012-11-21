CREATE OR REPLACE PROCEDURE NewPatron (patron_ID IN number, patronName IN varchar2, patronAddr IN varchar2, patronTelephone IN number)
	
IS
	BEGIN
		INSERT INTO Patrons (patronid, Name, Address, Telephone)
		VALUES (patron_ID, patronName, patronAddr, patronTelephone);
	END;
/
