select books.title from loans
left join copies on loans.copyid = copies.copyid
left join books on copies.isbn = books.isbn;
