function [tp tn fp fn]  = get_diference( A , B )
[m n] = size(A);
tp = 0;
tn = 0;
fp = 0;
fn = 0;
for i = 1:m
    for j = 1:n
        if A(i,j) == 1 && B(i,j) == 1
            tp = tp + 1;
        else if A(i,j) == 1 && B(i,j) == 0
                fn = fn + 1;
            else if A(i,j) == 0 && B(i,j) == 1
                fp = fp + 1;
                else if A(i,j) == 0 && B(i,j) == 0
                    tn = tn + 1;
        end
        end
        end
        end
    end
end
end

