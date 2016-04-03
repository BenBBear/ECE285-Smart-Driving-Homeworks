
function [ result ] = makeConfusionMatrix( p,truth )
%MAKE Summary of this function goes here
%   Detailed explanation goes here
len = max(truth) + 1;

result = zeros(len,len);

for i=1:len
   idx = find(truth==(i-1));
   base = length(idx);   
   for j=1:len 
        result(i,j) = sum(p(idx)==j-1)/base;
   end
end

result = array2table(result, 'VariableNames',makeStringList('Truth_',len),...
                             'RowNames',makeStringList('Predicted_',len));


                     
function  r = makeStringList(name,num)
%num=9,0:9
r = cell(1,num);
for i=0:num-1
    r{i+1} = strcat(name,int2str(i));
end
