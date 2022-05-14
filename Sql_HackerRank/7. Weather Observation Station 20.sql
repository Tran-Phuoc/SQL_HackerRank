- Tạo ra một bản tạm để sắp xếp đánh số thứ tự, từ đó lấy median

set @index := -1;
with myTable as (select @index:=@index+1 as myIndex,LAT_N from station order by LAT_N)
select round(AVG(LAT_N),4) from myTable
where myIndex in (floor(@index/2),ceil(@index/2))