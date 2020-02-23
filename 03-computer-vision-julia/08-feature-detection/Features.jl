using ImageFeatures, TestImages, Images, ImageDraw, CoordinateTransformations

building = load("building.jpg")

features_1 = imcorner(building, method=harris);

function draw_points(image::AbstractArray, mask::Keypoints; c::Colorant=colorant"yellow")
    new_image = copy(image)
    new_image[mask] = c
    return new_image
end

draw_points(building, features_1)
