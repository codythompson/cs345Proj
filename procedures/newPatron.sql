CREATE OR REPLACE PROCEDURE NewPatron (patronName IN varchar2, patronAddr IN varchar2, patronTelephone IN number)
	
IS
	BEGIN
		INSERT INTO Patrons (Name, Address, Telephone)
		VALUES (patronName, patronAddr, patronTelephone);
	END;
/
