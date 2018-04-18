% 10.3	Traversing: Adapt the readCD(…) and writeCD(…) functions above to
% save and restore text files with the results of the following problems.
% (Do you really have to change anything but the function name?) 
clear
clc
buildCars
writeCars(cars, 'cars.txt')
copyCars = readCars('cars.txt')
