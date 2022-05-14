declare @number smallint = 3
declare @result varchar(642) ='2'
/*
lặp sốcầntìm(X) từ 2-1000, lặp thêm từ 2 đến căn bậc 2 của X, 
	nếu X chia hết cho 2 thì thoát vòng lặp và số đó không phải là Prime 
*/
while (@number<=1000)
    begin
        declare @test smallint = 2
        declare @IsPrime BIT = 1
        while (@test*@test<=@number)
        begin
                if (@number%@test=0) 
                    begin
                        set @IsPrime = 0 
                        break
                    end
                set @test = @test+1
        end
        if (@IsPrime=1)
            set @result = concat(@result,'&',@number)
        set @number = @number + 1  
    end
print @result