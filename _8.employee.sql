declare
       empno number;
       salemp number;
       c number;
begin
     empno:=&empno;
     select salary into salemp from employee where employeenumber=empno;
     if salemp!=-1 then
                    dbms_output.put_line('Salary of employee'||empno||'is'||salemp);
                   
    else
         dbms_output.put_line('Employee record not found');
   end if;
   select count(*) into c from employee where salary<10000;
   update employee set salary=salary+10000 where salary<10000;
   dbms_output.put_line('No:-of rows affected is'||c);
end;
/
