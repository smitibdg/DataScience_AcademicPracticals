CREATE TABLE employees(
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER,
    last_modified DATE
);

CREATE TABLE employee_audit(
    audit_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    old_salary NUMBER,
    new_salary NUMBER,
    change_date DATE
);

CREATE SEQUENCE employee_audit_seq
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER trg_audit_salary_changes
AFTER UPDATE OF salary ON employees
FOR EACH ROW 
BEGIN 
    INSERT INTO employee_audit (
        audit_id, emp_id, old_salary, new_salary, change_date
    )
    VALUES (
        employee_audit_seq.NEXTVAL,  
        :OLD.emp_id,                  
        :OLD.salary,                
        :NEW.salary,                  
        SYSDATE                       
    );
END;
/
