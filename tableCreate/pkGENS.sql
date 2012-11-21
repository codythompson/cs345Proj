create or replace function copies_next_pk
return number
is
  newPk number;
begin
  select max(copyid) + 1 into newPk from copies;
  return newPk;
end;
/

create or replace function patrons_next_pk
return number
is
  newPk number;
begin
  select max(patronid) + 1 into newPk from patrons;
  return newPk;
end;
/
