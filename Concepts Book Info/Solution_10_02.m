% 10.2	Traversing: Write a script that lists the following information
% about each vehicle: the year, manufacturer, model, and price. 
clear
clc

buildCars
n = length(cars);
for in = 1:n
    car = cars(in);
    fprintf(' %5d %s %s %d\n', car.year, car.manuf, car.model, car.price);
end
    