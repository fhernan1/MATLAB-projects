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

function ret=carOptions(car)
ret=car.basePrice;
switch(car.trim)
    case 'S'
        
    case 'LS'
        ret = ret+600;
    case 'LE'
        ret = ret+1200;
    otherwise
        error('The car''s trim must be S/LS/LE')
end
if car.cc
    ret=ret+150;
end
if car.dualAB
    ret = ret+300;
end
