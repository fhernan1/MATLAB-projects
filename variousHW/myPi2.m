n = 10000;
m = 0; 
for i = 1:n
    point = rand(1, 2);
    x = point(1);
    y = point(2);
    z = x.^2 +y.^2;
    if z <= 1
       m = m + 1; 
    end

    
end
myPi = 4 * m / n 
