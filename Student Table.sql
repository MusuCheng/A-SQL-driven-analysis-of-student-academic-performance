-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(20),
    Ethnicity VARCHAR(50)
);

-- StudyHabit Table
CREATE TABLE StudyHabit (
    HabitID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    StudyTimeWeekly FLOAT,
    Absences INT,
    Tutoring INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- ParentalInvolvement Table
CREATE TABLE ParentalInvolvement (
    InvolvementID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    ParentalSupport VARCHAR(20),
    ParentalEducation VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- ExtracurricularActivities Table
CREATE TABLE ExtracurricularActivities (
    ActivityID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    Extracurricular INT,
    Sports INT,
    Music INT,
    Volunteering INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- AcademicPerformance Table
CREATE TABLE AcademicPerformance (
    PerformanceID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    GPA FLOAT,
    GradeClass VARCHAR(5),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);