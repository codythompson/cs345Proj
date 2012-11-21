select books.title, c.copyid from copies c
left join books on c.isbn = books.isbn
where not exists (
    select copyid from loans
    where loans.copyid = c.copyid and loans.returned is null);
