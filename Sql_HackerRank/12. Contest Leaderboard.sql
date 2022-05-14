-- Tạo bảng trung gian S để lấy ra max score
-- Tính tổng sum loại bỏ các sum =0
select H.hacker_id, name,sum(score)
from Hackers H
inner join
     	(select hacker_id,max(score) as score 
	from submissions 
	group by challenge_id, hacker_id) S 
on H.hacker_id = S.hacker_id 
group by H.hacker_id, name
having sum(score) <> 0
order by sum(score) desc,H.hacker_id