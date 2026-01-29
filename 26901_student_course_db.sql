
CREATE TABLE Student (
    VTU_Number VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Department VARCHAR(50)
);

CREATE TABLE Course (
    Course_Code VARCHAR(20) PRIMARY KEY,
    Course_Name VARCHAR(100),
    Faculty_Id VARCHAR(20),
    Student_VTU VARCHAR(20),
    Faculty_Email VARCHAR(100),
    FOREIGN KEY (Student_VTU) REFERENCES Student(VTU_Number)
);
INSERT INTO Student VALUES
('1VTU21CS001', 'Amit Kumar', 'amit@gmail.com', '9876543210', 'CSE'),
('1VTU21CS002', 'Riya Sharma', 'riya@gmail.com', '9876543211', 'CSE'),
('1VTU21EC003', 'Rahul Verma', 'rahul@gmail.com', '9876543212', 'ECE'),
('1VTU21ME004', 'Sneha Patel', 'sneha@gmail.com', '9876543213', 'ME'),
('1VTU21CS005', 'Kiran Rao', 'kiran@gmail.com', '9876543214', 'CSE');
INSERT INTO Course VALUES
('CS101', 'DBMS', 'FAC01', '1VTU21CS001', 'fac01@gmail.com'),
('CS102', 'OS', 'FAC02', '1VTU21CS002', 'fac02@gmail.com'),
('EC101', 'Signals', 'FAC03', '1VTU21EC003', 'fac03@gmail.com'),
('ME101', 'Thermodynamics', 'FAC04', '1VTU21ME004', 'fac04@gmail.com'),
('CS103', 'CN', 'FAC05', '1VTU21CS005', 'fac05@gmail.com');
SELECT * FROM Student;
SELECT * FROM Course;
SELECT Department, COUNT(*) AS Total_Students
FROM Student
GROUP BY Department;
SELECT * FROM Student
ORDER BY Name;
SELECT * FROM Student
ORDER BY VTU_Number ASC;
SELECT * FROM Student
WHERE Department = 'CSE';
