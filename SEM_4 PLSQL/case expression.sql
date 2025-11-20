-- d) Using case ladder
DECLARE
    age number:=21;
    result varchar2(100);
BEGIN
    result:=case
                when age<18 then 'You are not eligible to vote'
                when age=18 then 'You are just eligible to vote'
                when age>18 then 'You are eligible to vote'
                else 'Invalid age'
              END;

    dbms_output.put_line(result);
END;
/
