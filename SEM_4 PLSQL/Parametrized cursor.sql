-- Parametrized cursor
DECLARE
	r_product products%rowtype;
	cursor c_product(low_price NUMBER, high_price NUMBER) IS
		SELECT * FROM products
		WHERE list_price BETWEEN low_price AND high_price;
BEGIN
	-- show mass products
	dbms_output.put_line('Mass Products: ');
OPEN c_product(50,100);
LOOP
	FETCH c_product INTO r_product;
	EXIT WHEN c_product%notfound;
	dbms_output.put_line(r_product.Name ||':'|| r_product.list_price);
END LOOP;
CLOSE c_product;
END;
/