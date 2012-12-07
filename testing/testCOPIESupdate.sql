-- this should update just fine (because this ISBN exists)
update cdt27.copies
set isbn = 9780140042528
where copyid = 6;

-- this should fail because none of the columns in the cdt27.copies table allow nulls
update cdt27.copies
set isbn = null, copyid = null
where copyid = 6;

-- this should fail because it changes the isbn of an entry that is referenced by books(isbn) (it doesn't exist so the reference breaks)
update cdt27.copies
set isbn = 8888888888
where copyid = 6;

rollback;
