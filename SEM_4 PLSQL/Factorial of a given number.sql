DECLARE
num int:=5;
res int;
function fact(num IN int)
RETURN int
AS
f int;
BEGIN
f:=1;
for i in 1..num LOOP
f:=f*i;
END LOOP;
RETURN f;
END fact;
BEGIN
dbms_output.put_line('FINDING FACTORIAL OF:'||num);
res:=fact(num);
dbms_output.put_line('FACTORIAL IS:'||res);
END;
/
