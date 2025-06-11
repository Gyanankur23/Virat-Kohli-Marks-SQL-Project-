--  Create the table
CREATE TABLE Kohli_Marks (
    Student_Name VARCHAR(50),
    Subject VARCHAR(50),
    Marks INT
);

-- Insert Virat Kohli's marks
INSERT INTO Kohli_Marks (Student_Name, Subject, Marks) VALUES 
('Virat Kohli', 'English', 83),
('Virat Kohli', 'Hindi', 75),
('Virat Kohli', 'Mathematics', 51),
('Virat Kohli', 'Science', 55),
('Virat Kohli', 'Social Science', 81),
('Virat Kohli', 'Introductory IT', 74);

-- Retrieve all subjects and marks
SELECT Subject, Marks FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';

-- Find the highest-scoring subject
SELECT Subject, Marks FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli' ORDER BY Marks DESC LIMIT 1;

-- Find the lowest-scoring subject
SELECT Subject, Marks FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli' ORDER BY Marks ASC LIMIT 1;

-- Calculate average marks
SELECT AVG(Marks) AS Average_Marks FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';

-- Count total subjects studied
SELECT COUNT(Subject) AS Total_Subjects FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';

-- Find subjects where he scored above 70
SELECT Subject FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli' AND Marks > 70;

-- Check if he passed all subjects (passing marks: 35)
SELECT Subject FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli' AND Marks < 35;

-- Rank his subjects based on marks
SELECT Subject, Marks, RANK() OVER (ORDER BY Marks DESC) AS Rank FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';

-- Group subjects by grade categories (A: 80+, B: 60-79, C: below 60)
SELECT Subject, Marks, 
       CASE 
           WHEN Marks >= 80 THEN 'A'
           WHEN Marks >= 60 THEN 'B'
           ELSE 'C'
       END AS Grade
FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';

-- Calculate overall percentage
SELECT (SUM(Marks) * 100.0 / (COUNT(Subject) * 100)) AS Percentage 
FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';
