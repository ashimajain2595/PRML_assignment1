clc
clear all;
close all;

load TrainingSet.mat
load TestSet.mat


xtr1 = train_x(:,1:400);
ytr1 = train_y(:,1:400);
xtr1 = xtr1';
ytr1 = ytr1';
    
for m = 1:9
    [X, W] = modelFit(xtr1, ytr1, m);
    E(m) = computeError(W, X, ytr1);
    plot(xtr1, ytr1, 'gx')
    hold on
    plot(xtr1, X*W, 'rx')  
    hold off
    title(['Model = ', num2str(m)]);
    fprintf('Program paused. Press enter to continue.\n');
    pause;
end

[min_err1, M1] = min(E);
M1

xtr2 = train_x(:, 202:601);
ytr2 = train_y(:, 202:601);
xtr2 = xtr2';
ytr2 = ytr2';

for m = 1:9
    [X, W] = modelFit(xtr2, ytr2, m);
    E(m) = computeError(W, X, ytr2);
    plot(xtr2, ytr2, 'gx')
    hold on
    plot(xtr2, X*W, 'rx')  
    hold off
    title(['Model = ', num2str(m)]);
    fprintf('Program paused. Press enter to continue.\n');
    pause;
end

[min_err2, M2] = min(E);
M2

xtr3 = [train_x(:, 1:200) train_x(:, 402:601)];
ytr3 = [train_y(:,1:200) train_y(:, 402:601)];
xtr3 = xtr3';
ytr3 = ytr3';

for m = 1:9
    [X, W] = modelFit(xtr3, ytr3, m);
    E(m) = computeError(W, X, ytr3);
    plot(xtr3, ytr3, 'gx')
    hold on
    plot(xtr3, X*W, 'rx')  
    hold off
    title(['Model = ', num2str(m)]);
    fprintf('Program paused. Press enter to continue.\n');
    pause;
end

[min_err3, M3] = min(E);
M3