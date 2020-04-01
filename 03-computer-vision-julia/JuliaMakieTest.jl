using Makie, Interact, Luxor

x = rand(10)
y = rand(10)
colors = rand(10)
scene = scatter(x, y, color = colors)

# x = 5:5
# y = 5:5
# sizevec = x ./ 10
# color = (1, 0.1, 1)
# scene = scatter(x, y, color = color, markersize = sizevec)
# scene

# t = Node(0)
#
# c = lift(t) do t
#         RGBf0(t/255, (255 - t)/255, 0)
#     end
#
# scene = lines(rand(10); linewidth=10, color = c)
#
# record(scene, "line_changing_colour_with_observables.mp4", 1:255; framerate = 60) do i
#     t[] = i # update `t`'s value
# end
