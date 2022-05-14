/*
join 4 bảng với nhau và lấy ra tên của người có lương người cao hơn
*/
select name 
from students s
    inner join friends f on s.id = f.id
    inner join packages p on s.id=p.id
    inner join packages p2 on f.friend_id = P2.id
where p2.Salary > p.Salary 
order by p2.Salary