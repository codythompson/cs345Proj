select copies.copyid from loans
left join copies on loans.copieid = copies.copyid;
