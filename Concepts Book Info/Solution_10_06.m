% 10.6	Folding: Write a script to calculate the total inventory cost of
% the vehicles. Assume that the inventory cost is 75 percent of each
% vehicle price.
clear
clc

cars = readCars('cars.txt');
cost = 0;
n = length(cars);
for in = 1:n
    car = cars(in);
    cost = cost + car.price;
end
invCost = cost * 0.75

