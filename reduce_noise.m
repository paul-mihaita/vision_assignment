function result = reduce_noise(image,filter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

result = conv2(image,filter,'same');
end

