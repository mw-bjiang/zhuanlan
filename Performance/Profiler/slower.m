function alpha = slower
M1 = rand(3);
M2 = rand(3);
points1 = rand(3,10000);
points2 = rand(3,10000);

for i = 1:size(points1,2);
    
    point1 = points1(:,i);
    point2 = points2(:,i);
    
    a1 = inv(M1)*point1;
    a2 = inv(M2)*point2;
    
    A = [a1,-a2];
    y = rand(3,1);
    
    AtA = A'*A;
    if cond(AtA) > 1/eps('double')
        alpha(:,i) = 0;
    else
        alpha(:,i) = inv(AtA) * A' * y;
    end   
    
end

end%End of slower