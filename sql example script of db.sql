-- create tables
-- create a table of all the approval bodies that the company work with
CREATE TABLE approval_body (
    ApprovalBodyID INT PRIMARY KEY,
    ApprovalBodyName VARCHAR(255) UNIQUE,
    Country VARCHAR(255) NOT NULL
)
;
-- create a table of all the employees of the company
CREATE TABLE employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Role VARCHAR(255)
)
;
-- create a table that will have all the trials we did in the company
CREATE TABLE trial (
    TrialID INT PRIMARY KEY,
    Phase VARCHAR(255) NOT NULL,
    NumOfParticipant INT,
    Duration INT  --in months
)
;
-- create a link table between employee and trial
-- because the employee conduct the trial
CREATE TABLE employee_trial (
    EmployeeID INT NOT NULL,
    TrialID INT NOT NULL,
    PRIMARY KEY (EmployeeID, TrialID),      -- composite key
    FOREIGN KEY (EmployeeID) REFERENCES employee(EmployeeID),
    FOREIGN KEY (TrialID) REFERENCES trial(TrialID)
)
;
-- create a link table between trial and approval_body
-- because the trials gives us data that we need to give to the approval body
CREATE TABLE trial_approval_body (
    TrialID INT NOT NULL,
    ApprovalBodyID INT NOT NULL,
    PRIMARY KEY (TrialID, ApprovalBodyID),  -- composite key
    FOREIGN KEY (TrialID) REFERENCES trial(TrialID),
    FOREIGN KEY (ApprovalBodyID) REFERENCES approval_body(ApprovalBodyID)
)
;
-- create a link table between employee and approval body
-- because the employee id submitting the application to the approval body
CREATE TABLE employee_approval_body (
    EmployeeID INT NOT NULL,
    ApprovalBodyID INT NOT NULL,
    Status VARCHAR(255) NOT NULL,
    PRIMARY KEY (EmployeeID, ApprovalBodyID),  -- composite key
    FOREIGN KEY (EmployeeID) REFERENCES employee(EmployeeID),
    FOREIGN KEY (ApprovalBodyID) REFERENCES approval_body(ApprovalBodyID)
)
;

-- insert table
-- insert data of approval bodies that the company work with to approval_body table
INSERT INTO approval_body (ApprovalBodyID, ApprovalBodyName, Country)
VALUES (1, 'Health Ministry', 'USA'),
       (2, 'FDA', 'USA'),
       (3, 'EMA', 'EU'),
       (4, 'MHRA', 'UK'),
       (5, 'TGA', 'Australia')
;

-- insert employee details to the employee table
INSERT INTO employee (EmployeeID, FirstName, LastName, Role)
VALUES (111, 'Roni', 'Cohen', 'Researcher'),
       (112, 'Dan', 'Levi', 'Salespeople'),
       (113, 'Yossi', 'Kelly', 'Manager'),
       (114, 'Dana', 'Shwartz', 'Analyst'),
       (115, 'Eve', 'Davis', 'Pharmacists')
;

-- insert trials that were/are in process in the company to the trial table
INSERT INTO trial (TrialID, Phase, NumOfParticipant, Duration)
VALUES (1234, 'Phase 1', 50, 10),
       (3452, 'Phase 2', 200, 17),
       (7863, 'Phase 3', 1000, 35),
       (4684, 'Preclinical', 10, 4),
       (4605, 'Post-Market', 300, 24)
;

