CREATE TABLE WorkLocation (
    Location_id NUMBER PRIMARY KEY,
    Building_code VARCHAR2(10) UNIQUE NOT NULL, -- Shortened
    Location_name VARCHAR2(50) NOT NULL,
    Location_type VARCHAR2(50) CHECK (Location_type IN ('Office', 'Lab', 'Warehouse', 'Meeting Room')),
    Max_occupancy NUMBER NOT NULL, -- Shortened
    IT_infra_level NUMBER, -- Shortened
    Access_tier NUMBER, -- Shortened
    Operational_status VARCHAR2(50), -- Shortened
    Last_sanit_ts DATE NOT NULL, -- Shortened
    Exit_proximity NUMBER 
);