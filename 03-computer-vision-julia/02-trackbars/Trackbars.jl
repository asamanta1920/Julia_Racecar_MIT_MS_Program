@manipulate for r in 0:0.01:1, g in 0:0.01:1, b in 0:0.01:1
    sleep(0.5)
    @draw begin
         setline(10)
         sethue(r,g,b)
         circle(O, 100, :fill)
    end
end
