for beta = 0:1:10    
    c1 = c1 - 0.1*beta*eye(size(c1));
    for i = 1:1024
        y1(:,i, beta+1) = normpdf(X1(:,i), m1(i), c1(i,i)^0.5);        
    end
end
[max_y1 m1] = max(max(max(y1)));
lamda1 = (beta - 1)*0.1

for beta = 0:1:100    
    c2 = c2 - 0.1*beta*eye(size(c2));
    for i = 1:1024
        y2(:,i, beta+1) = normpdf(X2(:,i), m2(i), c2(i,i)^0.5);        
    end
end
[max_y2 m2] = max(max(max(y2)));
lamda2 = (beta - 1)*0.1

for beta = 0:1:10    
    c3 = c3 - 0.1*beta*eye(size(c3));
    for i = 1:1024
        y3(:,i, beta+1) = normpdf(X3(:,i), m3(i), c3(i,i)^0.5);        
    end
end
[max_y3 m3] = max(max(max(y3)));
lamda3 = (beta - 1)*0.1