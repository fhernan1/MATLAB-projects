% Solution 4-21

hits = 0;
points = input('How many points?');
for num=1:points
    x = rand(1,1);
    y = rand(1,1);
    if (x^2+y^2) <= 1
        hits = hits + 1;
    end
end
estPi = (hits/points)*4