DECLARE
  --Global Variables
  g_numOne number:=30;
  g_numTwo number:=40;
BEGIN
  dbms_output.put_line('Outer Variable g_numOne:'||g_numOne);
  dbms_output.put_line('Outer Variable g_numTwo:'||g_numTwo);
DECLARE
  --Local Variables
  l_numThree number:=50;
  l_numFour number:=50;
BEGIN
  dbms_output.put_line('Outer Variable inside inner block g_numOne:'||g_numOne);
  dbms_output.put_line('Outer Variable inside inner block g_numTwo:'||g_numTwo);
  dbms_output.put_line('Inner Variable l_numThree:'||l_numThree);
  dbms_output.put_line('Inner Variable l_numFour:'||l_numFour);
END;
END;
/
