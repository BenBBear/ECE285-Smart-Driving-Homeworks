function [ pr,rc ] = makePRCurve( scores, labels, label)
%MAKEPRCURVE Summary of this function goes here
%   Detailed explanation goes here
[rc,pr] = perfcurve(labels, scores(:,label+1),label, 'xCrit', 'reca', 'yCrit', 'prec');
end

