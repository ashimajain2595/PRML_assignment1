function [X, W] = modelFit(xtr1, ytr1, m)

for i = 1:400
    for j = 1:m
        X(i,j) = xtr1(i)^j;
    end
end

X = [ones(length(X),1) X];

W = pinv(X'*X)*X'*ytr1;
