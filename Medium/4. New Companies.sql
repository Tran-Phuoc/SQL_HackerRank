-- join 5 bảng với nhau, từ đó count để lấy ra số lượng
select c.company_code,founder,
       count(distinct l.lead_manager_code),
       count(distinct s.senior_manager_code),
       count(distinct m.manager_code),
       count(distinct e.employee_code)
from Company c inner join Lead_Manager l on c.company_code = l.company_code
               inner join Senior_Manager s on l.lead_manager_code = s.lead_manager_code
               inner join Manager m on s.senior_manager_code = m.senior_manager_code
               inner join Employee e on m.manager_code = e.manager_code
group by c.company_code,founder
order by c.company_code