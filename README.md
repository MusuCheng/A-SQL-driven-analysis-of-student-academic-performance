# 📊 ScholarlyDB: A SQL Approach to Educational Metrics

This project, built for our BDM (Business Data Management) final, presents a full-stack relational database system to analyze the academic performance and behavioral patterns of high school students. We used SQL for schema design, data modeling, query development, and triggers. The project also includes rich data visualizations using Tableau and Python.

## 👥 Team Members

- **Keyu (Kevin) Chen**
- Niketan Baranwal  
- Geetika Padala  
- Deniz Zeran

---

## 🗂️ Project Components

### 📁 Files

| File | Description |
|------|-------------|
| `BDM Final Project SQL Code.docx` | Contains `CREATE TABLE` statements and schema design |
| `Student Table.sql`, `insert_student_data.sql` | SQL scripts for schema & sample data |
| `SQL Questions.docx` | 20+ advanced queries answering specific business/education questions |
| `ER diagram.png` | Entity-Relationship diagram of the full database |
| `BDM Final Project.pptx` | Project presentation slides |
| `BDM Final Project.twbx` | Tableau dashboard (performance & behavioral insights) |
| `BDM FInal Project ViZ.twbx` | Supplementary Tableau visualizations |
| `BDM Project Viz Code.pdf` | Python code to create GPA-impact visualizations with Matplotlib/Seaborn |

---

## 🧱 Database Schema Design

We modeled the following tables with relationships:

- **Student**: Basic demographics  
- **StudyHabit**: Absences, weekly study hours, tutoring status  
- **ParentalInvolvement**: Support level and education background  
- **ExtracurricularActivities**: Participation in sports, music, volunteering  
- **AcademicPerformance**: GPA and grade class  
- **Enrollment** (bonus): Course-level performance data  

Primary and foreign key relationships ensure referential integrity across the dataset.

---

## 📈 Example SQL Queries

| Purpose | Sample Query |
|--------|--------------|
| Gender distribution | `SELECT Gender, COUNT(*) FROM Student GROUP BY Gender` |
| Avg GPA by parental education | `GROUP BY ParentalEducation` |
| Study time impact on GPA | `CASE WHEN study_time_weekly < 5 THEN 'Low' ...` |
| Students with GPA > 3.0 | `WHERE GPA > 3.0` |
| Students with >2 extracurriculars | `WHERE (E + S + M + V) >= 2` |
| Students with high study effort but low GPA | GPA efficiency metric |
| GPA + Study time ranking | Composite score metric |
| Trigger on >15 absences | `AFTER INSERT ON StudyHabit` → `AbsenceWarnings` table |

---

## 📊 Visualizations

### 📍 Tools Used:
- **Tableau**: Interactive dashboards showing GPA trends by gender, study hours, absence level, and more
- **Python (Matplotlib + Seaborn)**:
  - Study Time vs. GPA (dual axis)
  - Absence Category vs. GPA (color heatmap)
  - Tutoring vs. Support effect (grouped bars)

### 🖼️ Sample Visuals:
- 📉 Students with 10+ hrs/week & GPA < 2.5 (low efficiency)
- 🎓 Avg GPA by parental education level
- ⛔ Absences vs. GPA drop-off
- 🎯 Composite GPA+Effort Score Ranking

---

## 🚀 How to Use

1. Run the `CREATE TABLE` and `INSERT` scripts in MySQL or compatible DBMS
2. Use `SQL Questions.docx` to explore the database
3. Open `.twbx` files in **Tableau Desktop or Tableau Public**
4. Use `BDM Project Viz Code.pdf` as a Python reference for building static charts

---

## 📌 Key Insights

- Higher parental support + tutoring correlates with significantly improved GPA
- Study time shows nonlinear returns—students with 10–15 hrs/week perform best
- Absences >15 strongly correlate with GPA < 2.5
- Male students receive less tutoring but more often participate in extracurriculars

---

## 🔚 Conclusion

This project demonstrates how SQL + Data Viz tools can uncover rich insights in student performance. From GPA prediction to identifying at-risk students, our system provides educators and institutions with actionable academic metrics.