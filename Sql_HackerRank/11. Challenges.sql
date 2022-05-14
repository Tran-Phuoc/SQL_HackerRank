with 
-- Tạo bảng trung gian nối 2 bảng hackers và challenges
    myTable as(
        select h.hacker_id as id,name, count(*) as counter
        from Hackers h,Challenges c
        where h.hacker_id=c.hacker_id
        group by h.hacker_id,name
    ),
--Tìm max trên bảng tìm được
    maXX as(
        select max(counter) as m from myTable
    ),
--Lọc ra điều kiện counter =1
    temp as(
        select counter as temp1
        from myTable
        group by counter
        having count(counter)=1
    )
--Chọn ra các cột có counter bằng cột vừa nãy tạo
select distinct id,name,counter from myTable,maXX,temp
where counter = m
    or counter in (select temp1)
order by counter desc,id