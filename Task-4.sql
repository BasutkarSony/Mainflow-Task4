use studentmanagement;
select studentID,Name,MathScore,TotalScore from students
order by TotalScore desc;

# Rank Students Based on Total Scores
select name, TotalScore,rank() over (order by TotalScore desc)  as Ranks
from students;

# Calculate Running Totals for Math Scores
select SUM(MathScore) over (order by StudentID) as TotalMathScore
from students;
