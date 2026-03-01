CREATE TABLE Finance (
    Finance_id NUMBER PRIMARY KEY,
    Fiscal_role_code NUMBER NOT NULL,
    Account_designation VARCHAR2(50) NOT NULL, -- Shortened
    Sign_auth_limit NUMBER, -- Shortened
    Audit_license_limit NUMBER,
    Payroll_auth_level NUMBER, -- Shortened
    Exp_approval_scope VARCHAR2(100), -- Shortened
    Tax_speciality VARCHAR2(50), -- Shortened
    Fiscal_KPI VARCHAR2(50),
    Ledger_access VARCHAR2(20), -- Shortened
    Report_deadline DATE NOT NULL, -- Shortened
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);