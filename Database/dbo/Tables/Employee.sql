CREATE TABLE Employee (
    employee_id NUMBER PRIMARY KEY,
    role_id NUMBER UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    base_salary NUMBER,
    perf_rating NUMBER, -- Shortened
    exp_years NUMBER, -- Shortened
    department VARCHAR2(50) NOT NULL,
    employ_status VARCHAR2(50) NOT NULL, -- Shortened
    Leave_status VARCHAR2(50) NOT NULL,
    contact_id NUMBER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(Contact_id)
);