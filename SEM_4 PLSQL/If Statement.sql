-- a) Using if statement.
DECLARE
age number:=10;

BEGIN
	if age<18 then
		dbms_output.put_line('You are not eligible vote');
	END if;
		dbms_output.put_line('When you become 18 you can vote');
END;
/