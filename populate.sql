--insert into books
--values (9780863697654, 'Factotum', 'harles Bukowski', 'Black Sparrow Books',
--to_date('1975/01/01', 'yyyy/mm/dd'));
--insert into books
--values (9780140042528, 'The Dharma Bums', 'Jack Kerouac', 'The Viking Press',
--to_date('1958/01/01', 'yyyy/mm/dd')); 
--insert into books
--values (9780425043769, 'Dune', 'Frank Herbert', 'Chilton books', 
--to_date('1965/01/01', 'yyyy/mm/dd'));

--insert into Copies
--values (1, 9780863697654);
--insert into Copies
--values (2, 9780140042528);
--insert into Copies
--values (3, 9780425043769);

insert into Loans
values (1, 4, null, to_date('2013/01/01','yyyy/mm/dd'));
insert into Loans
values (2, 6, to_date('10/20/2012', 'mm/dd/yyyy',
        to_date('2013/01/01','yyyy/mm/dd'));
insert into Loans
values (3, 5, to_date('12/01/2011', 'mm/dd/yyyy'), 
    to_date('2013/01/01','yyyy/mm/dd'));
