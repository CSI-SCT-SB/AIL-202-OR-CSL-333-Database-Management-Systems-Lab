declare
   num1 number;
   num2 number;
   min number;
   sum number;
   avg number;

procedure proc(num1 in number, num2 in number, min out number, sum out number, avg out float) is
begin
   if num1<num2 then
      min := num1;
   else
      min := num2;
   endif;
   sum := num1 + num2;
   avg := sum/2;
end;

begin
   num1 := &num1;
   num2 := &num2;
   proc(num1,num2,min,sum,avg);
   dbms_output.put_line('Minimum number :'||min);
   dbms_output.put_line('Sum :'||sum);
   dbms_output.put_line('Average :'||avg);
end;
/