-- 5. Campaign & Operations
CREATE TABLE Campaign (
    Campaign_id NUMBER PRIMARY KEY,
    Version_tag VARCHAR2(10) NOT NULL,
    Campaign_name VARCHAR2(20) NOT NULL,
    Objective VARCHAR2(100) NOT NULL, -- Shortened
    employee_id NUMBER NOT NULL,
    client_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (client_id) REFERENCES Client(Client_id)
);