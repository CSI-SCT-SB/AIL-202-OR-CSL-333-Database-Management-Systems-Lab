CREATE OR REPLACE TRIGGER restrictBook
BEFORE INSERT ON BOOK
FOR EACH ROW
DECLARE
   avgc float;
BEGIN
   select avg(cost) INTO avgc from book;
   IF:new.cost<=avgc THEN
      raise_application_error(-20000,'Cost of book cannot be less than average cost of books');
   END IF;
END;
/
