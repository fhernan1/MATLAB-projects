% 10.7	Searching: Write a script that a customer could use to do the following:
% •	Enter a manufacturer’s name
% •	Enter a year
% •	Find the first vehicle on the list made by that manufacturer in that year
clear
clc

cars = readCars('cars.txt');
% Make a list of manufacturer names
mans = {cars.manuf};
nc = length(cars);
for in = nc:-1:2
    nm = mans{in};
    for jn = 1:in-1
        if strcmp(nm, mans{jn})
            mans(in) = [];
            break
        end
    end
end

n = length(mans);
for in = 1:n
    fprintf('%2d: %s\n', in, mans{in});
end
n = input('enter the manufacturer number: ');
yr = input('enter the year: ');
fprintf('Finding a %d %s\n', yr, mans{n});
found = false;
for in = 1:nc
    car = cars(in);
    if strcmp(mans{n}, car.manuf) && car.year == yr
        found = true;
        break;
    end
end
if found
    car
else
    'not found'
end
        
