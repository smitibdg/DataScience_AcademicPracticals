DECLARE
	total_rows number(2);
BEGIN
	UPDATE employees
	SET Salary = Salary+5000;
	IF sql%notfound THEN
		dbms_output.put_line('No Employees Updated');
	ELSIF sql%found THEN
		total_rows := sql%rowcount;
		dbms_output.put_line(total_rows || ' Employees Updated');
	END IF;
END;
/