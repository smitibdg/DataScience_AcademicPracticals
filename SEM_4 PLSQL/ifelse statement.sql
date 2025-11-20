-- b) Using ifelse statement
DECLARE
age number:=10;

BEGIN
	if age<18 then
		dbms_output.put_line('You are not eligible vote');
	else
		dbms_output.put_line('When you are eligible to vote');
	END if;
END;
/