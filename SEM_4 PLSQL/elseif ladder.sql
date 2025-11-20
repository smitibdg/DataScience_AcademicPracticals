-- c) Using elseif ladder
DECLARE
    age number:=10;
BEGIN
	if age<18 then
        	dbms_output.put_line('You are not eligible to vote');
    	elsif age=18 then
        	dbms_output.put_line('You are just eligible to vote');
    	elsif age>18 then
        	dbms_output.put_line('You are eligible to vote');
    	else
        	dbms_output.put_line('You are eligible to vote');
    	END if;
END;
/