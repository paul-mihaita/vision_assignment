function [result] = apply_log(image,size,deviation,x)
filter = LOG(size,deviation);
%image = imgaussfilt(image,x);
image = conv2(image,filter,'same') > 0;
result = bwperim(image);
end