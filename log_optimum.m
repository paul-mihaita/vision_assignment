function [ allt,best_t,allp,allr,mtpr,mfpr,mdist,ms,md ] = log_optimum(truth,gray_img)
allp = [];
allr = [];
allt = [];
mtpr = 0;
mfpr =9999;
mdist = 9999;
%gray_img = imgaussfilt(gray_img,1.4);
for size = 5:50
    for dev = 1:0.1:2
        filter = LOG(size,dev);
        image = conv2(gray_img,filter,'same');
        maximum = max(max(image));
        for i = 0:(maximum/10):maximum
            img = image > i;
            img = bwperim(img);
            [p,r] = roc(truth,img);
            dist = sqrt( ( 1 - p)^2 + (0 - r)^2);
            allp = [allp p];
            allr = [allr r];
            allt = [allt i];
            if dist < mdist
                mtpr = p;
                mfpr = r;
                ms = size;
                md = dev;
                mdist = dist;
                best_t  = i;
            end
        end
    end
end
scatter(allr,allp);
xlabel(['fpr']);
ylabel(['tpr']);
end