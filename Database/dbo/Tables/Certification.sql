CREATE TABLE Certification (
    Cert_id NUMBER PRIMARY KEY, -- Shortened
    Cert_name VARCHAR2(100) NOT NULL, -- Shortened
    Issuing_org VARCHAR2(100) NOT NULL, -- Shortened
    Validity_duration DATE NOT NULL,
    Pass_threshold NUMBER NOT NULL, -- Shortened
    Renewal_Req_Desc VARCHAR2(100) NOT NULL, -- Shortened
    Verify_url VARCHAR2(100) NOT NULL, -- Shortened
    Difficulty_level NUMBER,
    Skill_category VARCHAR2(50), -- Shortened
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);