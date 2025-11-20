CREATE TABLE emp (
    e_id NUMBER PRIMARY KEY,
    e_name VARCHAR2(50),
    e_email VARCHAR2(50),
    e_department VARCHAR2(50),
    e_sal NUMBER,
    last_modified DATE
);

CREATE TABLE emp_log (
    audit_id NUMBER PRIMARY KEY,
    action VARCHAR2(200),
    action_time TIMESTAMP
);

CREATE SEQUENCE emp_log_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER emp_log_tr
AFTER INSERT or UPDATE ON emp
BEGIN
INSERT INTO emp_log (audit_id, action, action_time)
values(emp_log_seq.NEXTVAL, 'INSERT OR UPDATE ON employees', SYSTIMESTAMP);
END;
/

INSERT INTO emp (e_id, e_name, e_email, e_department, e_sal, last_modified) VALUES (101, 'MANO','mano@gmail.com', 'IT', 40000, SYSDATE);
INSERT INTO emp (e_id, e_name, e_email, e_department, e_sal, last_modified) VALUES (102, 'ARVIND', 'arvind@gmail.com', 'HR', 50000, SYSDATE);
INSERT INTO emp (e_id, e_name, e_email, e_department, e_sal, last_modified) VALUES (103, 'ACHU', 'achu@gmail.com', 'admin', 60000, SYSDATE);

select * from emp_log;

update emp set e_sal=45000 where e_id = 101;

select * from emp_log;