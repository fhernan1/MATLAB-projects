% 10.5	Filtering: The manager has decided that older vehicles do not
% enhance the appearance of the dealership. Write a script that removes all
% vehicles made before 2002 from your collection.
clear
clc

cars = readCars('cars.txt');
n = length(cars);
out = 0;
for in = 1:n
    car = cars(in);
    if car.year > 2001
        out = out+1;
        res(out) = car;
    end
end
out
res