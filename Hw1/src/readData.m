function [Mnist, Cifar10] = readData(useShuffle , val_split)

Mnist = emptyStruct();
Mnist.name = 'Mnist';
Mnist.pr_label = 0;
[Mnist.train_images, Mnist.train_labels, Mnist.val_images, Mnist.val_labels,...
    Mnist.test_images, Mnist.test_labels]= initMnistData(useShuffle , val_split);
    


Cifar10 = emptyStruct();
Cifar10.name = 'Cifar10';
Cifar10.pr_label = 0;
Cifar10.color = 'r';
[Cifar10.train_images, Cifar10.train_labels, Cifar10.val_images, Cifar10.val_labels,...
    Cifar10.test_images, Cifar10.test_labels]= initCifar10Data(useShuffle , val_split);
    



function output_arg = emptyStruct()

output_arg = struct('train_images',[],'train_labels',[],'val_images',[],'val_labels',[],...
    'test_images',[],'test_labels',[],'model',[],'name','',...
    'validation_result',[],'test_result',[],'validation_scores',[],'test_scores',[],...
    'pr_label',0,'validation_accuracy',0,'test_accuracy',0,'val_confusion_matrix',[],...
    'test_confusion_matrix',[],'precision',0,'recall',0,'color','b');
