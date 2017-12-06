function M = magnitude( X,Y )
maxI = size(X,1);
maxJ = size(X,2);
for i = 1:maxI
    for j = 1:maxJ
        M(i,j) = hypot(X(i,j),Y(i,j));
    end
end


