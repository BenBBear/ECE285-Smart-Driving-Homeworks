function obj = genReport( obj)

% * Overall classification accuracy (for each dataset)

% * Confusion matrices (one for MNIST and one for CIFAR-10) to show classification 
%   performance, use array2table method.

% * Two precision-recall curves (one for MNIST and one for CIFAR-10). 
%   For the MNIST, treat the ?0? class as the positive class and the rest as 
%   negative class. For CIFAR-10, treat ?airplane? as the positive class and the 
%   rest as negative class.

obj.validation_accuracy = sum(obj.val_labels == obj.validation_result)/length(obj.val_labels);
obj.test_accuracy = sum(obj.test_labels == obj.test_result)/length(obj.test_labels);

obj.val_confusion_matrix = makeConfusionMatrix(obj.validation_result, obj.val_labels);
% obj.test_confusion_matrix = makeConfusionMatrix(obj.test_result, obj.test_labels);

[obj.precision,obj.recall] = makePRCurve(obj.validation_scores, obj.val_labels,obj.pr_label);

end

