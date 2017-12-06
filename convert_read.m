function [ img ] = convert_read2( img2 )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
img = imread(img2);
img = rgb2gray(img);
img = double(img);
end

