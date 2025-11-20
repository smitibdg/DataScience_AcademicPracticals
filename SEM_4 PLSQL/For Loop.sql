#b) For Loop
DECLARE
	x number := 0;
BEGIN
for x in 1..100 loop
if mod(x,2)=0 then
dbms_output.put_line(x);
EnD if;
END Loop;
	END;
/