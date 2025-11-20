#a) Using for loop
DEClARE
n number := 1;
BEGIN
while n <= 10
loop
dbms_output.put_line(n);
n := n+2;
END loop;
END;
/