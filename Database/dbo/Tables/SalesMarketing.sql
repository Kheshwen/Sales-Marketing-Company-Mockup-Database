CREATE TABLE SalesMarketing (
    SalesMarketing_id NUMBER PRIMARY KEY,
    Segment_id NUMBER NOT NULL, -- Shortened
    Sales_tier NUMBER,
    Month_quota NUMBER, -- Shortened
    CRM_profile VARCHAR2(50), -- Shortened
    Comm_tier NUMBER, -- Shortened
    Client_list VARCHAR2(100), -- Shortened
    Budget_authority VARCHAR2(100), -- Shortened
    PR_score NUMBER, -- Shortened
    Assigned_Geo_Territory VARCHAR2(50), -- Shortened
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);