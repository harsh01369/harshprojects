--
-- File generated with SQLiteStudio v3.4.4 on Fri Jul 14 23:50:11 2023
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
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (1, 'Campus A', 'Miami', '5555544444');
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (2, 'Campus B', 'Los Angels', '4545456565');
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (3, 'Campus C', 'New york', '1234567890');
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (4, 'Campus D', 'Seattle', '9876543210');
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (5, 'Campus E', 'London', '7878854598');
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (6, 'Campus F', 'Manchester', '2345678901');
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (7, 'Campus G', 'Birmingham', '6543210987');
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (8, 'Campus H', 'Las vegas', '5432106987');
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (9, 'Campus I', 'Mexico', '8596741023');
INSERT INTO Campuses (CampusID, CampusName, Location, ContactDetail) VALUES (10, 'Campus J', 'Bombay', '2255887744');

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
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (1, 1, 1, '2023-08-01');
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (2, 2, 2, '2023-09-01');
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (3, 3, 3, '2023-10-01');
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (4, 4, 4, '2023-11-01');
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (5, 5, 5, '2023-12-01');
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (6, 6, 6, '2024-01-01');
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (7, 7, 7, '2024-02-01');
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (8, 8, 8, '2024-03-01');
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (9, 9, 9, '2024-04-01');
INSERT INTO Certificates (CertificateID, StudentID, CourseID, IssueDate) VALUES (10, 10, 10, '2024-05-01');

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
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (1, 1, 'john', 'Parent', '8527419630', '123 Main Street,Miami');
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (2, 2, 'Ram', 'Parent', '9638527410', '456 Elm Street,London');
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (3, 3, 'joe', 'Parent', '55555555555', '789 Oak Street,Manchester');
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (4, 4, 'polard', 'Parent', '7894563570', '321 Maple Avenue,Newyork');
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (5, 5, 'smith', 'Parent', '9517538624', '654 Pine Road,Toronto');
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (6, 6, 'henry', 'Parent', '8899776655', '987 Cedar Lane,Ontario');
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (7, 7, 'tom', 'Parent', '7788778899', '741 Birch Court,Los Angels');
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (8, 8, 'liam', 'Parent', '9955117755', '852 Walnut Drive,Sanfransico');
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (9, 9, 'william', 'Parent', '88554477888', '369 Sycamore Street,Dubai');
INSERT INTO Contacts (ContactID, StudentID, ContactName, Relationship, ContactNumber, Address) VALUES (10, 10, 'alex', 'Parent', '9933117755', '258 Aspen Avenue,Doha');

-- Table: Courses
CREATE TABLE IF NOT EXISTS Courses (
    CourseID INTEGER PRIMARY KEY,
    CourseName TEXT,
    Cost REAL,
    StartDate DATE,
    EndDate DATE,
    UNIQUE(CourseID)
);
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (1, 'Virtual dance', 100.0, '2023-07-01', '2023-07-31');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (2, 'computer science', 200.0, '2023-08-01', '2023-08-31');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (3, 'arts', 150.0, '2023-09-01', '2023-09-30');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (4, 'biology', 180.0, '2023-10-01', '2023-10-31');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (5, 'maths', 120.0, '2023-11-01', '2023-11-30');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (6, 'social', 250.0, '2023-12-01', '2023-12-31');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (7, 'history', 300.0, '2024-01-01', '2024-01-31');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (8, 'business', 170.0, '2024-02-01', '2024-02-29');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (9, 'finace', 190.0, '2024-03-01', '2024-03-31');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (10, 'religion', 220.0, '2024-04-01', '2024-04-30');
INSERT INTO Courses (CourseID, CourseName, Cost, StartDate, EndDate) VALUES (11, 'Virtual Dance', 150.0, '2023-07-15', '2023-08-15');

-- Table: Employees
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    PersonnelID TEXT,
    FOREIGN KEY(StaffID) REFERENCES Staff(StaffID),
    UNIQUE(EmployeeID)
);
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (1, 1, 'Personnel ID 1');
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (2, 2, 'Personnel ID 2');
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (3, 3, 'Personnel ID 3');
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (4, 4, 'Personnel ID 4');
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (5, 5, 'Personnel ID 5');
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (6, 6, 'Personnel ID 6');
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (7, 7, 'Personnel ID 7');
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (8, 8, 'Personnel ID 8');
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (9, 9, 'Personnel ID 9');
INSERT INTO Employees (EmployeeID, StaffID, PersonnelID) VALUES (10, 10, 'Personnel ID 10');

-- Table: Enrollment
CREATE TABLE IF NOT EXISTS Enrollment (
    EnrollmentID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    CourseID INTEGER,
    EnrollmentStartDate DATE,
    EnrollmentEndDate DATE,
    Amount REAL,
    FeePaid BOOLEAN, -- Change the name to FeePaid
    FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
    UNIQUE(StudentID)
);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (1, 1, 1, '2023-02-02', '2023-01-31', 100.0, 1);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (2, 2, 1, '2023-01-01', '2023-01-31', 100.0, 1);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (3, 3, 2, '2023-02-01', '2023-02-28', 150.0, 1);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (4, 4, 2, '2023-02-01', '2023-02-28', 150.0, 0);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (5, 5, 3, '2023-03-01', '2023-03-31', 200.0, 1);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (6, 6, 3, '2023-03-01', '2023-03-31', 200.0, 1);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (7, 7, 4, '2023-04-01', '2023-04-30', 120.0, 0);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (8, 8, 4, '2023-04-01', '2023-04-30', 120.0, 0);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (9, 9, 5, '2023-05-01', '2023-05-31', 180.0, 1);
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentStartDate, EnrollmentEndDate, Amount, FeePaid) VALUES (10, 10, 5, '2023-05-01', '2023-05-31', 180.0, 1);

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
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (1, 'John', 'Doe', 1, 0, 0, 1, '9898787889');
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (2, 'Jane', 'Smith', 1, 0, 0, 2, '8585585845');
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (3, 'Michael', 'Johnson', 0, 1, 0, 3, '6565654545');
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (4, 'Emily', 'Williams', 0, 1, 0, 4, '8989656575');
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (5, 'David', 'Brown', 0, 0, 1, 5, '2535157545');
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (6, 'Sarah', 'Jones', 0, 0, 1, 6, '9878683828');
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (7, 'Daniel', 'Miller', 1, 0, 0, 7, '8899775544');
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (8, 'Olivia', 'Davis', 1, 0, 0, 8, '6545251587');
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (9, 'Andrew', 'Anderson', 0, 1, 0, 9, '3366998877');
INSERT INTO Staff (StaffID, FirstName, LastName, IsTeacher, IsSupport, IsManagement, CampusID, ContactDetail) VALUES (10, 'Sophia', 'Wilson', 0, 1, 0, 10, '8989787858');

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
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (1, 'Adam', 'Johnson', 1, 'London', 'alex@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (2, 'Emma', 'Davis', 2, 'Essex', 'emma@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (3, 'William', 'Wilson', 3, 'Dundi', 'william@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (4, 'Sophia', 'Anderson', 4, 'Bombay', 'sophia@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (5, 'James', 'Miller', 5, 'Tokyo', 'james@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (6, 'Olivia', 'Thomas', 6, 'Paris', 'olivia@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (7, 'Liam', 'Harris', 7, 'Venis', 'liam@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (8, 'Ava', 'Lee', 8, 'Moscow', 'ava@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (9, 'Benjamin', 'Brown', 9, 'Dubai', 'benjamin@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (10, 'Mia', 'Clark', 10, 'Doha', 'mia@example.com');
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (11, '', NULL, NULL, NULL, NULL);
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Students (StudentID, FirstName, LastName, CampusID, City, Email) VALUES (15, NULL, NULL, NULL, NULL, NULL);

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
