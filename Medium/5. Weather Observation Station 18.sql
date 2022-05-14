--Theo công thức |x1 - x2| + |y1 - y2|
select round(max(LAT_N)-min(LAT_N)+max(LONG_W)-min(LONG_W),4) from STATION