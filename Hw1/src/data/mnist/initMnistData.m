function [train_images, train_labels,val_images,val_labels, test_images, test_labels] = initMnistData(useShuffle, validationSplit)
[train_images, train_labels, test_images, test_labels] = readMnist();
% if useZscore
%     train_images = zscore(train_images);
%     test_images = zscore(test_images);
% end

if useShuffle
    sf_train = randperm(length(train_labels));
    sf_test = randperm(length(test_labels));
    train_images = train_images(:,sf_train);
    train_labels = train_labels(sf_train);
    test_images = test_images(:,sf_test);
    test_labels = test_labels(sf_test);
end

train_images = train_images';
test_images = test_images';


splitTrainIndex = length(train_images) * validationSplit;
val_images = train_images(1:splitTrainIndex,:);
val_labels = train_labels(1:splitTrainIndex);
train_images = train_images(splitTrainIndex+1:end,:);
train_labels = train_labels(splitTrainIndex+1:end);
end
