--AVAILABILITY CHECKING PROCEDURES
--shows number of available books for book
select cdt27.GetNumAvail('Dune') from dual;

--shows error for wrong book name in system or null
select cdt27.GetNumAvail('blah blah') from dual;

--shows availability of said book
execute cdt27.CheckAvailability('dune');

--shows error for wrong book name in system or null
execute cdt27.CheckAvailability('blah blah');


--CHECKING IN/OUT PROCEDURES
--checks out a book based on valid patron name and copyID
execute cdt27.CheckOut('mark', 2);

--shows error due to wrong parameters in checkout process
execute cdt27.CheckOut(null, null);

--checks in a book based on the copyID that was checked out from procedure above
execute cdt27.CheckIn(2);

--shows error for wrong copyID in checkin process
execute cdt27.CheckIn(null);

--LOAN HISTORY PROCEDURES
--get the ID of a patron by their name
select cdt27.GetPatronId('Mark') from dual;

--get an error from trying to get ID because no name exists
select cdt27.GetPatronId(null) from dual;

--get the book history from a user based on their name
execute cdt27.LoanHistory('Cody');

--get an error trying to get loan history due to a bad user name
execute cdt27.LoanHistory(null);


--get the currently checked out books via patron name
execute cdt27.CurrentlyCheckedOut('Mark');

--get an error when trying to get currently checked out books due to bad patron name
execute cdt27.CurrentlyCheckedOut(null);


--PATRON PROCEDURES
--successfully creating a new patron
execute cdt27.NewPatron('Mark', ‘5 cool st.’, 9285551234);

--enter wrong values for a new patron (causes errors)
execute cdt27.NewPatron(null, null, null);

rollback;
