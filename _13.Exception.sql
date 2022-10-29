DECLARE
    cityex EXCEPTION;
    countryex EXCEPTION;
    ageex EXCEPTION;
    age NUMBER;
    id VARCHAR(20);
    city VARCHAR(20);
    country VARCHAR(20)
    inp VARCHAR(20);

BEGIN
   inp:=&inp
   select eid,ecity,ecountry,eage INTO id,city,country,age FROM employee where eid=inp;
   IF id='E01' THEN
        raise cityex;
   ELSIF id='E05' THEN
        raise countryex;
   ELSE
       raise ageex;
   ENDIF
EXCEPTION
   when cityex THEN
       dbms_output.put_line('City:'||city);
   when countryex THEN
       dbms_output.put_line('Country:'||country);
   when ageex THEN
       dbms_output.put_line('Age:'||age);
END;
/