-- 4. Employee Subclasses
CREATE TABLE Management (
    Management_id NUMBER PRIMARY KEY,
    Board_mem_id NUMBER UNIQUE NOT NULL, -- Shortened
    Manage_level VARCHAR2(50) NOT NULL, -- Shortened
    Budget_alloc VARCHAR2(100), -- Shortened
    Position VARCHAR2(50) NOT NULL,
    Board_status VARCHAR2(50),
    KPI_target VARCHAR2(50),
    Leave_approval NUMBER(1),
    Strategic_plan VARCHAR2(100),
    Bonus_eligible NUMBER(1),
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);