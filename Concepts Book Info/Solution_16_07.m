% 16.7	Write a script that will take a structure array and sort it using
% the internal MATLAB sort(…) algorithm. It should request the name of a
% field in the structure array containing numerical data, and sort the
% array based on the contents of that field. You could use the CD
% collection from Chapter 10 and sort it on the value or stars fields, for
% example.
clear
clc
fleet = readCars('cars.txt')
flds = fieldnames(fleet)
for in = 1:length(flds)
    fn = flds{in};
    if isnumeric(fleet(1).(fn))
        fprintf('%d: %s\n', in, fn)
    end
end
choice = input('which field? ');
fn = flds{choice};
vals = [fleet.(fn)];
[vls where] = sort(vals);
for in = 1:length(fleet)
    idx = where(in);
    car = fleet(idx);
    fprintf('%d %s %s %d %8.2f\n', ...
        car.year, car.manuf, car.model, car.price, car.mileage );
end