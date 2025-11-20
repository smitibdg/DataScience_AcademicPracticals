DECLARE
	cursor employees IS
	Select ID, Name, Salary from employees
	Order by Name;
BEGIN
	For e in employees
	LOOP
	dbms_output.put_line(e.ID || ':' || e.Name|| ':' || e.Salary);
END LOOP;
END;
/