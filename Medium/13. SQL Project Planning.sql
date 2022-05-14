--Tạo một bảng trung gian để lưu thứ tự

WITH t AS (
  SELECT Start_Date s
        , End_Date e
        , ROW_NUMBER() OVER(ORDER BY Start_Date) rn
  FROM Projects
)

/* chọn ra min và max của ngày start cùng với nhóm sự chênh lệch ngày giữa start và row    
*/

SELECT MIN(s),MAX(e)
FROM t
GROUP BY DATEDIFF(day,rn,s)
ORDER BY COUNT(DATEDIFF(day,rn,s))
        , MIN(s)