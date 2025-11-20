#c) Use of GOTO Statement.
DECLARE
	val number := 3;
BEGIN
<<statement1>>
--whileloop execution
	WHILE val <= 12 LOOP
		dbms_output.put_line(val);
		val := val+2;
		IF val=7 THEN
			GOTO statement1;
		END IF;
	END LOOP;
END;
/