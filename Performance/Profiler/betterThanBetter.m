function alpha = betterThanBetter
M1 = rand(3);
M2 = rand(3);
points1 = rand(3,10000);
points2 = rand(3,10000);
alpha = zeros(2,size(points1,2));

a1 = M1 \ points1;
a2 = M2 \ points2;

for i = 1:size(points1,2);
   
    A = [a1(:,i),-a2(:,i)];
    y = rand(3,1);
    
    if cond(A) > 1/eps('double')
        alpha(:,i) = 0;
    else
        alpha(:,i) = A \ y;
    end
    
end

end%End of betterThanBetter