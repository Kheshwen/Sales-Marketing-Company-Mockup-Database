-- 3. Tables dependent on Employee and Contact
CREATE TABLE Client (
    Client_id NUMBER PRIMARY KEY,
    Company_name VARCHAR2(50) NOT NULL,
    Industry_code VARCHAR2(10) NOT NULL, -- Shortened
    Annual_value NUMBER, -- Shortened
    Priority_tier NUMBER, -- Shortened
    Primary_contact NUMBER NOT NULL,
    Client_status VARCHAR2(20) NOT NULL,
    Client_activity VARCHAR2(20) NOT NULL,
    Company_SSM_no NUMBER UNIQUE NOT NULL,
    Bill_method VARCHAR2(20), -- Shortened
    Referral_source VARCHAR2(20),
    contact_id NUMBER NOT NULL,
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(Contact_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);