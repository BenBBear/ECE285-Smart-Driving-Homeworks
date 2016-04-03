function feature_images = getFeatureImages(images)
feature_images = arrayfun(@(n) getFeature(images(n,:)), 1:size(images,1), ...
'UniformOutput', false);
feature_images = toFloatMatrix(feature_images);




function mat2 = toFloatMatrix(cellmat)
l = length(cellmat);
mat2 = zeros(l,length(cellmat{1}));
for i=1:l
    mat2(i,:) = cellmat{i};
end

