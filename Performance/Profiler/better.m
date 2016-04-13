function alpha = better
M1 = rand(3);
M2 = rand(3);
points1 = rand(3,10000);
points2 = rand(3,10000);
alpha = zeros(2,size(points1,2));

for i = 1:size(points1,2);
    
    point1 = points1(:,i);
    point2 = points2(:,i);
    
    a1 = M1 \ point1;
    a2 = M2 \ point2;
    
    A = [a1,-a2];
    y = rand(3,1);
    
    AtA = A'*A;
    if cond(AtA) > 1/eps('double')
        alpha(:,i) = 0;
    else
        alpha(:,i) = AtA \ A' * y;
    end   
    
end

end%End of better