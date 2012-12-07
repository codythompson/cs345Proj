-- this should update just fine (because this ISBN exists)
update copies
set isbn = 9780140042528
where copyid = 6;

-- this should fail because none of the columns in the copies table allow nulls
update copies
set isbn = null, copid = null
where copyid = 6;

-- this should fail because it changes the isbn of an entry that is referenced by books(isbn) (it doesn't exist so the reference breaks)
update copies
set isbn = 8888888888
where copyid = 6;

rollback;
