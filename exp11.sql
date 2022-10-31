declare 
	result number;
function countTuples
return number
is
	cnt number;
begin
	select count(*) into cnt from employee;
	return cnt;
end;
begin
	result:=countTuples();
	dbms_output.put_line('Number of tuples '|| result);
end;
/