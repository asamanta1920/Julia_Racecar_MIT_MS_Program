# using ImageFeatures, TestImages, Images, ImageDraw, CoordinateTransformations
#
# building = load("building.jpg")

# features_1 = imcorner(building, method=harris);
#
# function draw_points(image::AbstractArray, mask::Keypoints; c::Colorant=colorant"yellow")
#     new_image = copy(image)
#     new_image[mask] = c
#     return new_image
# end
#
# draw_points(building, features_1)

using ImageFeatures, TestImages, Images, ImageDraw, CoordinateTransformations, Interact, QuartzImageIO

building = load("building.jpg")
building_gray = Gray.(building)

features_1 = imcorner(building, method=harris);
features_1 = .!.!features_1

function draw_points(image::AbstractArray, mask; c::Colorant=colorant"red")
    new_image = copy(image);
    new_image[mask] .= c;
    return new_image;
end

features4 = imcorner(building, 0.90, true, method=harris)
draw_points(building, features4);
