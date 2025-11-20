DECLARE
	e_id employees.ID%type;
	e_name employees.Name%type;
	e_sal employees.Salary%type;
  	cursor e_employees is
	Select ID, Name, Salary from employees;
BEGIN
	OPEN e_employees;
	  LOOP
  		FETCH e_employees into e_id ,e_name, e_sal;
  		EXIT when e_employees%notfound;
  		dbms_output.put_line(e_id||''||e_name||''||e_sal);
	  END LOOP;
	CLOSE e_employees;
END;
/