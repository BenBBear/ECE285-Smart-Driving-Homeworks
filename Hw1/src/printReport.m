function  printReport(e,option)
%PRINTREPORT Summary of this function goes here
%   Detailed explanation goes here

   %%% General Info
    fprintf('\n\n\n========================  %s  ========================\n\n', e.name);
    fprintf('\nshuffle: %d \nvalidation_size: %d\ntreeNum: %d\n',...
         option.useShuffle, length(e.val_labels), option.treeNum);
    
      
   %%% Precision   
   fprintf('\n\nValidation Accuracy: %0.2f%%',e.validation_accuracy*100);
   fprintf('\nTest Accuracy: %0.2f%%',e.test_accuracy*100);
   
   %%% Confusion Matrix
   if ~isempty(e.val_confusion_matrix)
        fprintf('\n\nValidation Confusion Matrix:\n\n');
        disp(e.val_confusion_matrix)
   end
   
   if ~isempty(e.test_confusion_matrix)
        fprintf('\nTest Confusion Matrix\n\n');
        disp(e.test_confusion_matrix)
   end
  
   
   %%% PR Curve
   fprintf('\nPrecision Recall Curve Plotting...');
   plot(e.recall, e.precision,e.color);
   xlabel('Recall'); ylabel('Precision')
   title(sprintf('%s-Precision-recall curve (shuffle: %d, validation_size: %d, treeNum: %d)',...
         e.name,option.useShuffle, length(e.val_labels), option.treeNum));   
   fprintf(' Finished');
    fprintf('\n\n========================  %s END ========================\n\n', e.name);
end

