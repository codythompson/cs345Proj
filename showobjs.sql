set serveroutput on;
create or replace procedure show_objs
is
  cursor cur is 
  select object_name, object_type from all_objects
  where owner = 'CDT27' and
  object_type in ('TABLE', 'VIEW', 'PROCEDURE', 'FUNCTION')
  order by object_type;

  prev_type varchar2(19);
begin
  dbms_output.put_line('=========================');
  dbms_output.put_line('CS 345 project dB objects');
  dbms_output.put_line('=========================');

  for rec in cur
    loop
      if prev_type is null or prev_type != rec.object_type then
        dbms_output.put_line('=========================');
        dbms_output.put_line(rec.object_type || 'S');
        dbms_output.put_line('-------------------------');
      end if;
      prev_type := rec.object_type;
      dbms_output.put_line(rec.object_name);
    end loop;
    dbms_output.put_line('-------------------------');
end;
/
