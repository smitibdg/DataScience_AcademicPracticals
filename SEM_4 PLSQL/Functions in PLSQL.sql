DECLARE  
   a number;  
   b number;  
   c number; 
PROCEDURE findMax(x IN number, y IN number, z OUT number) IS  
BEGIN  
   IF x > y THEN  
      z:= x;  
   ELSE  
      z:= y;  
   END IF;  
END;    
BEGIN  
   a:= 49;  
   b:= 45;  
   findMax(a, b, c);  
   dbms_output.put_line(' Maximum of (49, 45) : ' || c);  
END;  
/
