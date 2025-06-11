# Virat-Kohli-Marks-SQL-Project-

### **Project Overview**  
This project delves into **Virat Kohli's Class 10 exam marks**, analyzing them through SQL queries to extract meaningful insights. The dataset includes subject-wise marks, ranking, grade categorization, percentage calculation, and various queries to evaluate his academic performance. The entire project is well-documented in a **PowerPoint presentation (Virat Kohli SQL Project.pdf)** and the corresponding SQL script **(ViratKohli10thMarksAnalysis.sql)**.

---

### **Dataset Summary**  
The dataset is constructed using **Virat Kohli's official CBSE Class 10 mark sheet** from 2004. The subjects and marks recorded are:

| Subject             | Marks |
|--------------------|------|
| English           | 83   |
| Hindi            | 75   |
| Mathematics       | 51   |
| Science & Tech    | 55   |
| Social Science    | 81   |
| Introductory IT   | 74   |

These marks serve as the basis for various SQL queries and analyses.

---

### **SQL Table Creation and Data Insertion**  
#### **Creating the SQL Table:**  

```sql
-- Create the table to store Virat Kohli's Class 10 marks
CREATE TABLE Kohli_Marks (
    Student_Name VARCHAR(50),
    Subject VARCHAR(50),
    Marks INT
);
```

#### **Inserting Data into the Table:**  

```sql
-- Insert Virat Kohli's marks into the table
INSERT INTO Kohli_Marks (Student_Name, Subject, Marks) VALUES 
('Virat Kohli', 'English', 83),
('Virat Kohli', 'Hindi', 75),
('Virat Kohli', 'Mathematics', 51),
('Virat Kohli', 'Science', 55),
('Virat Kohli', 'Social Science', 81),
('Virat Kohli', 'Introductory IT', 74);
```

This setup enables analysis using SQL queries.

---

### **Analysis Queries and Their Outputs**  
Each query uncovers valuable insights into Virat Kohli's academic performance.

#### **1. Subjects and Marks Virat Kohli Obtained**  
```sql
-- What are the subjects and marks that Virat Kohli obtained in his Class 10 exams?
SELECT Subject, Marks FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';
```
✅ **Output:** Displays all subjects and their respective marks.

---

#### **2. Highest Scoring Subject**  
```sql
-- Which subject did Virat Kohli score the highest marks in?
SELECT Subject, Marks FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli' ORDER BY Marks DESC LIMIT 1;
```
✅ **Output:**  
| Subject  | Marks |
|----------|------|
| English  | 83   |

English was his highest-scoring subject.

---

#### **3. Lowest Scoring Subject**  
```sql
-- In which subject did Virat Kohli score the lowest marks?
SELECT Subject, Marks FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli' ORDER BY Marks ASC LIMIT 1;
```
✅ **Output:**  
| Subject    | Marks |
|------------|------|
| Mathematics | 51   |

Mathematics was his lowest-scoring subject.

---

#### **4. Average Marks**  
```sql
-- What is the average mark that Virat Kohli obtained across all subjects?
SELECT AVG(Marks) AS Average_Marks FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';
```
✅ **Output:**  
| Average_Marks |
|--------------|
| 69.83       |

His **average score** across all subjects was **69.83**.

---

#### **5. Number of Subjects Studied**  
```sql
-- How many subjects did Virat Kohli study in his Class 10 exams?
SELECT COUNT(Subject) AS Total_Subjects FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';
```
✅ **Output:**  
| Total_Subjects |
|---------------|
| 6             |

He studied **six subjects** during his Class 10 exams.

---

#### **6. Subjects with Marks Above 70**  
```sql
-- Which subjects did Virat Kohli score above 70 marks in?
SELECT Subject FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli' AND Marks > 70;
```
✅ **Output:**  
| Subject          |
|----------------|
| English        |
| Hindi         |
| Social Science |
| Introductory IT |

He scored above **70 marks in four subjects**.

---

#### **7. Did He Pass All Subjects?**  
```sql
-- Did Virat Kohli pass all subjects in his Class 10 exams?
SELECT Subject FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli' AND Marks < 35;
```
✅ **Output:**  
Since no rows are returned, this confirms that **Virat Kohli passed all subjects**.

---

#### **8. Ranking Subjects Based on Marks**  
```sql
-- How do Virat Kohli's marks rank across different subjects?
SELECT Subject, Marks, RANK() OVER (ORDER BY Marks DESC) AS Rank FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';
```
✅ **Output:**  
| Subject          | Marks | Rank |
|----------------|------|------|
| English        | 83   | 1    |
| Social Science | 81   | 2    |
| Hindi         | 75   | 3    |
| Introductory IT | 74   | 4    |
| Science        | 55   | 5    |
| Mathematics    | 51   | 6    |

His subjects are ranked in order of performance.

---

#### **9. Grade Categorization**  
```sql
-- What grade category does each subject fall into based on Virat Kohli’s marks?
SELECT Subject, Marks, 
       CASE 
           WHEN Marks >= 80 THEN 'A'
           WHEN Marks >= 60 THEN 'B'
           ELSE 'C'
       END AS Grade
FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';
```
✅ **Output:**  
| Subject         | Marks | Grade |
|---------------|------|------|
| English       | 83   | A    |
| Hindi        | 75   | B    |
| Mathematics  | 51   | C    |
| Science      | 55   | C    |
| Social Science | 81   | A    |
| Introductory IT | 74   | B    |

His marks categorized into **grades**.

---

#### **10. Overall Percentage**  
```sql
-- What percentage did Virat Kohli score overall in his Class 10 exams?
SELECT (SUM(Marks) * 100.0 / (COUNT(Subject) * 100)) AS Percentage FROM Kohli_Marks WHERE Student_Name = 'Virat Kohli';
```
✅ **Output:**  
| Percentage |
|-----------|
| 69.83     |

His **overall percentage** was **69.83%**.

---

### **Final Insights and Presentation**
- The **Virat Kohli SQL Project.pdf** contains **query outputs**, **tables**, and **visualizations** to showcase the findings.  
- **GitHub Profile:** [@Gyanankur23](https://github.com/Gyanankur23) hosts the complete project with **documentation**, **queries**, and a **readable structure**.  


## 📁 Repository Structure  
- **ViratKohli10thMarksAnalysis.sql** → SQL script containing table creation, data insertion, and analysis queries.  
- **Virat Kohli SQL Project.pdf** → PowerPoint presentation with project documentation, query results, and structured analysis.  

## 🔍 Key SQL Operations  
- Extracting subject-wise marks  
- Ranking subjects based on performance  
- Computing average and overall percentage  
- Categorizing subjects into grade tiers  

## 🚀 How to Run  
1. Open an **SQL execution environment** (MySQL, PostgreSQL, or SQLite).  
2. Run the **ViratKohli10thMarksAnalysis.sql** script.  
3. Execute individual queries to generate insights and paste results into **Virat Kohli SQL Project.pdf**.  

## 📜 License  
This project is **licensed** and available for educational purposes.  
