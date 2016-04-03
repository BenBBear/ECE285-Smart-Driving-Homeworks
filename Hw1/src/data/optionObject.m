function [ o ] = optionObject(useShuffle, validationSplit, treeNum )
%CONFIGOBJECT Summary of this function goes here
%   Detailed explanation goes here
    o = struct( 'useShuffle',useShuffle, 'validationSplit',...
        validationSplit, 'treeNum', treeNum);

end

