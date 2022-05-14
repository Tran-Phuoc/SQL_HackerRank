--Theo công thức euclidean

select round(sqrt(pow(max(LAT_N)-min(LAT_N),2)+pow(max(LONG_W)-min(LONG_W),2)),4) from station