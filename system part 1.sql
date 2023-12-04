--
-- File generated with SQLiteStudio v3.4.4 on Thu Jul 13 18:27:42 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Campuses
CREATE TABLE IF NOT EXISTS Campuses (
    CampusID INTEGER PRIMARY KEY,
    CampusName TEXT,
    Location TEXT,
    ContactDetail TEXT,
    UNIQUE(CampusName)
);

-- Table: Certificates
CREATE TABLE IF NOT EXISTS Certificates (
    CertificateID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    CourseID INTEGER,
    IssueDate DATE,
    FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
    UNIQUE(StudentID) -- Unique constraint on StudentID to ensure one certificate per student
);

-- Table: Contacts
CREATE TABLE IF NOT EXISTS Contacts (
    ContactID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    ContactName TEXT,
    Relationship TEXT,
    ContactNumber TEXT,
    Address TEXT,
    FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
    UNIQUE(ContactID)
);

-- Table: Courses
CREATE TABLE IF NOT EXISTS Courses (
    CourseID INTEGER PRIMARY KEY,
    CourseName TEXT,
    Cost REAL,
    StartDate DATE,
    EndDate DATE,
    UNIQUE(CourseID)
);

-- Table: Employees
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    PersonnelID TEXT,
    FOREIGN KEY(StaffID) REFERENCES Staff(StaffID),
    UNIQUE(EmployeeID)
);

-- Table: Enrollment
CREATE TABLE Enrollment (
    EnrollmentID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    CourseID INTEGER,
    EnrollmentStartDate DATE,
    EnrollmentEndDate DATE,
    Amount REAL,
    FeePaid BOOLEAN, 
    FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
    UNIQUE(StudentID)
);

-- Table: Staff
CREATE TABLE IF NOT EXISTS Staff (
    StaffID INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    IsTeacher BOOLEAN,
    IsSupport BOOLEAN,
    IsManagement BOOLEAN,
    CampusID INTEGER,
    ContactDetail TEXT,
    FOREIGN KEY(CampusID) REFERENCES Campuses(CampusID),
    UNIQUE(StaffID)
);

-- Table: Students
CREATE TABLE IF NOT EXISTS Students (
    StudentID INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    CampusID INTEGER,
    City TEXT,
    Email TEXT,
    FOREIGN KEY(CampusID) REFERENCES Campuses(CampusID),
    UNIQUE(StudentID)
);

-- View: ManagementView
CREATE VIEW IF NOT EXISTS ManagementView AS
SELECT s.StudentID, s.FirstName, s.LastName, c.CourseName, e.Amount, e.PaymentStatus, t.Position
FROM Students AS s
INNER JOIN Enrollment AS e ON s.StudentID = e.StudentID
INNER JOIN Courses AS c ON e.CourseID = c.CourseID
INNER JOIN Staff AS t ON s.StudentID = t.StaffID;

-- View: SupportStaffView
CREATE VIEW IF NOT EXISTS SupportStaffView AS
SELECT s.StudentID, s.FirstName, s.LastName, c.CourseName, e.Amount, e.PaymentStatus
FROM Students AS s
INNER JOIN Enrollment AS e ON s.StudentID = e.StudentID
INNER JOIN Courses AS c ON e.CourseID = c.CourseID
INNER JOIN Staff AS t ON s.StudentID = t.StaffID
WHERE t.IsSupport = 1;

-- View: TeacherView
CREATE VIEW IF NOT EXISTS TeacherView AS
SELECT s.StudentID, s.FirstName, s.LastName, c.CourseName, e.Amount, e.PaymentStatus
FROM Students AS s
INNER JOIN Enrollment AS e ON s.StudentID = e.StudentID
INNER JOIN Courses AS c ON e.CourseID = c.CourseID
INNER JOIN Staff AS t ON s.StudentID = t.StaffID
WHERE t.IsTeacher = 1;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
