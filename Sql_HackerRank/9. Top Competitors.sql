-- join 4 bảng lại cùng với group và order với điều kiện score và số lần xuất hiện lớn hơn 1
select h.hacker_id,h.name 
from hackers h 
    inner join submissions s on h.hacker_id=s.hacker_id
    inner join challenges c on s.challenge_id=c.challenge_id
    inner join difficulty d on c.difficulty_level=d.difficulty_level
where s.score=d.score
group by h.hacker_id,h.name 
having  count(h.hacker_id)>1
order by count(c.challenge_id) desc,h.hacker_id