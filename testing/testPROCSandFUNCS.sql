--AVAILABILITY CHECKING PROCEDURES
--shows number of available books for book
execute GetNumAvail('Dune');

--shows error for wrong book name in system or null
execute GetNumAvail('blah blah');

--shows availability of said book
execute CheckAvailability('dune');

--shows error for wrong book name in system or null
execute CheckAvailability('blah blah');


--CHECKING IN/OUT PROCEDURES
--checks out a book based on valid patron name and copyID
execute CheckOut(‘mark’, 2);

--shows error due to wrong parameters in checkout process
execute CheckOut(null, null);

--checks in a book based on the copyID that was checked out from procedure above
execute CheckIn(2);

--shows error for wrong copyID in checkin process
execute CheckIn(null);

--LOAN HISTORY PROCEDURES
--get the ID of a patron by their name
execute GetPatronId(‘Mark’);

--get an error from trying to get ID because no name exists
execute GetPatronId(null);

--get the book history from a user based on their name
execute LoanHistory(‘Cody’);

--get an error trying to get loan history due to a bad user name
execute LoanHistory(null);


--get the currently checked out books via patron name
execute CurrentlyCheckedOut(‘Mark’);

--get an error when trying to get currently checked out books due to bad patron name
execute CurrentlyCheckedOut(null);




PATRON PROCEDURES
--successfully creating a new patron
execute NewPatron(‘Mark’, ‘5 cool st.’, 9285551234);

--enter wrong values for a new patron (causes errors)
execute NewPatron(null, null, null);
