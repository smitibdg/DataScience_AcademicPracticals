DECLARE
	v_result number;
BEGIN
	-- Call addition
    	add_numbers(10, 5, v_result);
    	dbms_output.put_line('Addition Result: ' || v_result);

    	-- Call subtraction
    	subtract_numbers(10, 5, v_result);
    	dbms_output.put_line('Subtraction Result: ' || v_result);

    	-- Call multiplication
    	multiply_numbers(10, 5, v_result);
    	dbms_output.put_line('Multiplication Result: ' || v_result);

    	-- Call division
    	divide_numbers(10, 5, v_result);
    	dbms_output.put_line('Division Result: ' || v_result);

    	-- Call division by zero to see the error handling
    	divide_numbers(10, 0, v_result);
    	dbms_output.put_line('Division by Zero Result: ' || NVL(v_result, 'NULL'));
END;
/