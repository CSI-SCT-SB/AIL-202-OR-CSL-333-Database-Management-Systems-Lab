declare
     accno number;
     bal number;
     
begin
     accno:=&accno;
     select balance into bal from account where accountno=accno;
     if bal<1000 then
              update account set balance=balance-100 where accountno=accno;
               dbms_output.put_line('Table updated');
     end if;
end;
/

