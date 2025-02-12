use studentmanagement;
select studentID,Name,MathScore,TotalScore from students
order by TotalScore desc;

select name, TotalScore,rank() over (order by TotalScore desc)  as Ranks
from students;

select SUM(MathScore) over (order by StudentID) as TotalMathScore
from students;