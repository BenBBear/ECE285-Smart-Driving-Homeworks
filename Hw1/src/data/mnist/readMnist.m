function [train_images, train_labels, test_images, test_labels] = readMnist(dir)
if nargin == 0
    dir = mfilename('fullpath');
    dir = dir(1:length(dir)-length('readMnist'));
end

train_images = loadMNISTImages(strcat(dir, '/train-images-idx3-ubyte'));



train_labels = loadMNISTLabels(strcat(dir,'/train-labels-idx1-ubyte'));
test_images = loadMNISTImages(strcat(dir, '/t10k-images-idx3-ubyte'));

test_labels = loadMNISTLabels(strcat(dir,'/t10k-labels-idx1-ubyte'));


end