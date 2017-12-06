function [ img ] = convert_read( img2 )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
img = imread(img2);
img = double(img);
img = logical(img);
end

