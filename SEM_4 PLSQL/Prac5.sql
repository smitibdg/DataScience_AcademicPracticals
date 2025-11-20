-- Create a procedure for addition
create or replace procedure add_numbers(
	p_num1 in number, 
	p_num2 in number, 
	p_result OUT number) AS
BEGIN
    p_result := p_num1 + p_num2;
END;
/

-- Create a procedure for subtraction
create or replace procedure subtract_numbers(
	p_num1 in number, 
	p_num2 in number, 
	p_result OUT number) AS
BEGIN
    p_result := p_num1 - p_num2;
END;
/

-- Create a procedure for multiplication
create or replace procedure multiply_numbers(
	p_num1 in number, 
	p_num2 in number, 
	p_result OUT number) AS
BEGIN
    p_result := p_num1 * p_num2;
END;
/

-- Create a procedure for division
create or replace procedure divide_numbers(
	p_num1 in number, 
	p_num2 in number, 
	p_result OUT number) AS
BEGIN
    IF p_num2 = 0 THEN
        p_result := NULL;
    ELSE
        p_result := p_num1 / p_num2;
    END IF;
END;
/