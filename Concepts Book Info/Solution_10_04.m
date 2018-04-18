% 10.4	Mapping: Assume that your collection of vehicle data is the
% inventory at a car dealership. Write a script that will reduce the prices
% of all the vehicles by 10 percent, except for the convertibles, whose
% prices you will raise by 5 percent.
clear
clc
cars = readCars('cars.txt')
n = length(cars)
for in = 1:n
    car = cars(in);
    if strcmp(car.style, 'convertible')
        car.price = car.price * 1.05;
    else
        car.price = car.price * 0.9;
    end
    cars(in) = car;
end
writeCars(cars, 'salePriced.txt')