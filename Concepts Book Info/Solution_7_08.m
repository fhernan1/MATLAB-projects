% 7.8	Suppose we have a car structure that has the following fields:
% basePrice ? a number representing the starting price of the car
% trim ? the style of the car, represented as a string
% cc ? a Boolean variable indicating that the car has cruise control
% dualAB ? a Boolean variable indicating that the car has dual air bags
% a.	Write a function called carOptions that takes in a car structure 
% and returns its final price from the base price and options:
%  The standard trim of the car is 'S'
%  If the trim is 'LS', add $600
%  If the trim is 'LE', add $1200
%  If the car has cruise control, add $150
%  If the car has dual air bags, add $300
clear
clc
Taurus.basePrice = 18000;
Taurus.trim = 'LS';
Taurus.cc = false;
Taurus.dualAB = true
carOptions(Taurus)
Taurus.trim = 'LE'
carOptions(Taurus)
Taurus.dualAB = false
carOptions(Taurus)

% b.	Now, write a function inventory that consumes an array of car 
% structures, and calculates the total value of the vehicles.
cars(1) = Taurus;
cars(2).basePrice = 23000;
cars(2).trim = 'LS';
cars(2).cc = false;
cars(2).dualAB = true;
cars(3).basePrice = 42000;
cars(3).trim = 'LE';
cars(3).cc = true;
cars(3).dualAB = false
inventory(cars)

