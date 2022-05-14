select case when Grade<8 then Null
            else Name
        end
       ,Grade,Marks 
from Students,Grades
where Marks between Min_Mark and Max_Mark
order by Grade desc,Name,Marks