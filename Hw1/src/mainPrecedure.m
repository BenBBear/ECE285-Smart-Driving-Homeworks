function  mainPrecedure( useShuffle, validationSplit, treeNum )
%MAINPRECEDURE Summary of this function goes here
% Detailed explanation goes here
% useZscore = true; 
% useShuffle = true; 
% validationSplit = 0.2;
% treeNum = 50;

[Mnist, Cifar10] = readData(useShuffle, validationSplit);

Env = [Mnist,Cifar10];
len = length(Env);

for i=1:len
  e = Env(i);
  Env(i).model = trainRandomForest(e.train_images, e.train_labels, treeNum);
end


for i=1:len
    e = Env(i);
    [Env(i).validation_result, Env(i).validation_scores] = predict(e.model, getFeatureImages(e.val_images));
    Env(i).validation_result = processLabel(Env(i).validation_result);
    
    [Env(i).test_result, Env(i).test_scores] = predict(e.model, getFeatureImages(e.test_images));
    Env(i).test_result = processLabel(Env(i).test_result);
end



for i=1:len   
   Env(i) = genReport(Env(i));
end

hold on;
for e = Env
   printReport(e,optionObject(useShuffle, validationSplit, treeNum));
end
legend(Env{1}.name,Env{2}.name);
hold off;


function u = processLabel(x)
u = str2num(cell2mat(x));

