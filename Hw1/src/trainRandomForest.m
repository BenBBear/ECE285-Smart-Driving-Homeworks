function [ model ] = trainRandomForest( images,labels,TreeNum)
%TRAINRANDOMFOREST Summary of this function goes here
%   Detailed explanation goes here
    rng(1); 
    feature_images = getFeatureImages(images);
    model = TreeBagger(TreeNum,feature_images,labels);
    


