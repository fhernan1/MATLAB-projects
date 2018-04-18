% 7.8	Suppose we have a car structure that has the following fields:
% basePrice ? a number representing the starting price of the car
% trim ? the style of the car, represented as a string
% cc ? a Boolean variable indicating that the car has cruise control
% dualAB ? a Boolean variable indicating that the car has dual air bags
% b.	Now, write a function inventory that consumes an array of car 
% structures, and calculates the total value of the vehicles.
function ret=inventory(cars)
ret=0;
for in = 1:length(cars)
    ret=ret+carOptions(cars(in));
end