using Images, Interact, Luxor

@manipulate for r in 0:0.01:1, g in 0:0.01:1, b in 0:0.01:1
    d = Drawing(500, 500, :png)
    sethue(r,g,b)
    circle(Point(250, 250), 100, :fill)
    finish()
    d
end

# @manipulate throttle = 0.2 for r in 0:0.1:1, g in 0:0.1:1, b in 0:0.1:1, p in 10:100, q in 10:100
#     d = Drawing(500, 500, :png)
#     background(r, g, b)
#     origin()
#     sethue("white")
#     setline(2)
#     hypotrochoid(200, p, q, :stroke)
#     finish()
#     d
# end

# num = 0
#
# @manipulate for num = 0, r in 0:0.01:1, g in 0:0.01:1, b in 0:0.01:1
#     d = Drawing(500, 500, :png)
#     sethue(r,g,b)
#     if num == 0
#         box(Point(50, 50), 50, 50, :fill)
#         num = 1
#         sleep(0.1)
#     else
#         circle(Point(50, 50), 50, :fill)
#         num = 0
#         sleep(0.1)
#     end
#     finish()
#     d
# end
