-- Mapping Tables
CREATE TABLE Meeting (
    Meeting_id NUMBER PRIMARY KEY,
    Meeting_date DATE UNIQUE NOT NULL,
    Subject VARCHAR2(20),
    Start_time DATE NOT NULL,
    End_time DATE NOT NULL,
    Meeting_type VARCHAR2(50),
    Agenda_summary VARCHAR2(1000),
    MOM_link VARCHAR2(1000) UNIQUE,
    Entity_type VARCHAR2(20),
    Entity_ID NUMBER,
    Follow_up_flag VARCHAR2(10),
    Security_level VARCHAR2(50),
    employee_id NUMBER NOT NULL,
    Location_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (Location_id) REFERENCES WorkLocation(Location_id),
    CONSTRAINT time_check CHECK (End_time > Start_time)
);