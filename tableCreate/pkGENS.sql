create or replace function copies_next_pk
return number
is
  newPk number;
begin
  select max(copyid) + 1 into newPk from copies;
  return newPK;
end;
/
