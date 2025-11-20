DECLARE
  --Global variables
  g_numOne number:= 30;
  g_numTwo number:= 40;
BEGIN
  dbms_output.put_line('Outer Variable g_numOne:'|| g_numOne);
  dbms_output.put_line('Outer Variable g_numTwo:'|| g_numTwo);
  DECLARE
  --Local variables
  l_numThree number:=50;
  l_numFour number:=60;
  BEGIN
    dbms_output.put_line('Outer Variable inside inner block g_numOne:'|| g_numOne);
    dbms_output.put_line('Outer Variable inside inner block g_numTwo:'|| g_numTwo);
    dbms_output.put_line('Inner Variable l_numThree:'|| l_numThree);
    dbms_output.put_line('Outer Variable l_numFour:'|| l_numFour);

    --arithmetic operations
     dbms_output.put_line('Addition of g_numOne and g_numTwo: ' || (g_numOne + g_numTwo));
     dbms_output.put_line('Subtraction of g_numTwo from g_numOne: ' || (g_numTwo - g_numOne));
     dbms_output.put_line('Multiplication of l_numThree and l_numFour: ' || (g_numTwo * l_numFour));
     dbms_output.put_line('Division of l_numFour by l_numThree: ' || (l_numFour / l_numThree));
     
  END;
END;
/
