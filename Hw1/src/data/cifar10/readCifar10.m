function [train_images, train_labels, test_images, test_labels] = readCifar10(dir)
if nargin == 0
    dir = mfilename('fullpath');
    dir = dir(1:length(dir)-length('readCifar10'));
end

dir = strcat(dir, '/cifar-10-batches-mat/');
train_images = [];
train_labels = [];
for i = 1:5 
    y = load(strcat(dir,'data_batch_' ,int2str(i),'.mat'));
    train_images = [train_images;y.data];
    train_labels = [train_labels;y.labels];
end

y = load(strcat(dir,'test_batch.mat'));
test_labels = y.labels;
test_images = y.data;

end