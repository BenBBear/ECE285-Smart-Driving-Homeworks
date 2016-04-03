function [ img ] = restoreImage( arr )
%RESTOREIMAGE Summary of this function goes here
%   Detailed explanation goes here
try
  l = sqrt(length(arr));
  img = reshape(arr,[l,l]);
catch
    ls = length(arr)/3;
    shape = [sqrt(ls),sqrt(ls)];
    img = zeros(shape(1),shape(2),3);
    img(:,:,1) = reshape(arr(1:ls),shape);
    img(:,:,2) = reshape(arr(ls+1:2*ls),shape);
    img(:,:,3) = reshape(arr(2*ls+1:end),shape);
end
end

