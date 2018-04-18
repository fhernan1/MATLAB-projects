% 10.8	Complex Solution: Now you want to use the data set for something
% practical. You want a script that does the following:
% •	Asks you for a year and odometer reading
% •	Searches the collection for vehicles (there may be more than one) made
% on or after the given year and that have less than the specified odometer
% reading and that have the highest gas mileage
% •	Displays the year, manufacturer, model, and price of these vehicles
clear
clc

buildCars
n = length(cars);
yr = input('oldest vehicle year: ');
odo = input('odometer maximum: ');
out = 0;
for in = 1:n
    car = cars(in);
    if car.year >= yr && car.miles < odo
        out = out + 1;
        res(out) = car;
    end
end
cons = [res.mileage];
[v where] = sort(-cons);
for in = 1:5
    idx = where(in);
    car = res(idx);
    fprintf('%d %s %s %d %8.2f\n', ...
        car.year, car.manuf, car.model, car.price, car.mileage );
end