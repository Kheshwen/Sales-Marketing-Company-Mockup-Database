CREATE TABLE MeetingAttendance (
    meeting_id NUMBER NOT NULL,
    employee_id NUMBER NOT NULL,
    PRIMARY KEY (meeting_id, employee_id),
    FOREIGN KEY (meeting_id) REFERENCES Meeting(Meeting_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- [Remaining tables shortened and formatted similarly]