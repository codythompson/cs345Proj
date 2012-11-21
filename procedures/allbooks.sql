create or replace view all_out
as
select copies.copyid copyid, books.isbn isbn, books.title title,
  patrons.patronid loanerid, patrons.name loanername, loans.due due--, 
  --(loans.due < sysdate) overdue
from loans 
left join copies on loans.copyid  = copies.copyid
left join books on copies.isbn = books.isbn
left join patrons on loans.patronid = patrons.patronid
where loans.returned is null
order by books.isbn, copies.copyid;
