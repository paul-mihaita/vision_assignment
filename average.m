function [ x ] = average( A )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(A);
x = 0;
k = 0;
for i = 1:m
    for j = 1:n
        if A(i,j) ~= 0
            x = x + A(i,j);
            k = k + 1;
        end
    end
end
x = x / k *100;
end

