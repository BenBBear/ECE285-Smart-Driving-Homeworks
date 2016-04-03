function [ output ] = getFeature( image )
%GETFEATURE Summary of this function goes here
%   Detailed explanation goes here
    [output, ] = extractHOGFeatures(restoreImage(image));
   
end

