function [ all_treshold,opt_treshold , all_tpr, all_fpr,max_tpr , max_fpr,mdist ] = laplacian_optimum(truth,gray_img,kernel)
all_tpr = [];
all_fpr = [];
all_treshold = [];
mdist = 999;
%gray_img = imgaussfilt(gray_img,1.4);
conv_img = conv2(gray_img,kernel,'same') ;
maximum = max(max(conv_img));
step = maximum/1000;
max_tpr = 0;
max_fpr = 0;
opt_treshold = 0;
for i = 0:step:maximum
    aux = conv_img > i;
    aux = bwperim(aux);
    [tpr,fpr] = roc(truth,aux);
    dist = sqrt( ( 1 - tpr)^2 + (0 - fpr)^2);
    all_tpr = [all_tpr tpr];
    all_fpr = [all_fpr fpr];
    all_treshold = [all_treshold i];
    if mdist > dist
        max_tpr = tpr;
        max_fpr = fpr;
        opt_treshold = i;
        mdist = dist;
    end
end
scatter(all_fpr,all_tpr);
xlabel(['fpr']);
ylabel(['tpr']);
end
