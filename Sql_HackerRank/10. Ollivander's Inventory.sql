/*
Viết truy vấn con để nhận được số lượng galleon vàng tối thiểu cần thiết để mua cây đũa phép có tuổi đời và sức mạnh cao
Từ đó xét theo điều kiện là not is_evil
*/
select id,age,coins_needed,power
from Wands w,Wands_Property p
where w.code = p.code and is_evil = 0
AND coins_needed = 
    (SELECT MIN(coins_needed) FROM Wands 
     WHERE code = w.code AND power = w.power)
order by power desc,age desc