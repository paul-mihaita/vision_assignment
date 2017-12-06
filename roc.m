function [ tpr , fpr ] = roc( A,B )

[tp,tn,fp,fn] = get_diference(A,B);
tpr = tp /(tp + fn);
fpr = 1 - tn /(fp + tn);

end
