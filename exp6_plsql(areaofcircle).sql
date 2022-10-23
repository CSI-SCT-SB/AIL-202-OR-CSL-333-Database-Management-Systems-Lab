declare
r float ;
area float;
pi constant float=3.14;
begin
r:=&r;
area=r*r*pi;
insert into carea (radius ,area) values(r,area);
for i in 3..7 loop
area=r*r*pi;
dbms_output.put_line("the area for"||i||"is"||area);
insert into circle (radius ,area) values(i,area);
end;
\