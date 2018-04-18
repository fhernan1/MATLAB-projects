% Chapter 15, Problem 4
function Ch_15_P_04 

clear
clc
close all
% 15-4	Engineers often use tabulated data for various calculations. 
% An important method that any good engineer should be able to apply  
% to tabulated data is Interpolation.  In thermodynamics, the  
% properties of a gas can be known when two of its properties  
% have been fixed. You are required to come up with a continuous  
% MATLAB function being given the tabulated data below measured  
% where the pressure is 0.10 MPa:
% Temperature (deg C)	Specific Volume(cu meters / Kg)
    table = [99.63	1.694
            100	1.696
            120	1.793
            160	1.984
            200	2.172
            240	2.359
            280	2.546
            320	2.732
            360	2.917
            400	3.103
            440	3.288
            500	3.565];

% Write a function called lookup that consumes three parameters:  
% the above table in an array table, a number value and a logical  
% control value getTemp.  If getTemp is true, the function interpolates  
% the value as a specific volume and returns the corresponding  
% temperature.  Otherwise, it interpolates the value as a temperature  
% and returns the corresponding specific volume.
% Notes: Your function IS NOT TO extrapolate the data i.e., your  
% function should return NaN if the user tries to obtain values  
% outside the range of the table values.
    fprintf('temp when sv = 1.7 is %1.2f\n', ...
        lookup(table, 1.7, true) );
    fprintf('temp when sv = 1.0 is %1.2f\n', ...
        lookup(table, 1.0, true) );
    fprintf('temp when sv = 4.0 is %1.2f\n', ...
        lookup(table, 4.0, true) );
    fprintf('sv when temp = 220 is %1.2f\n', ...
        lookup(table, 220, false) );
    fprintf('sv when temp = 600 is %1.2f\n', ...
        lookup(table, 600, false) );
    fprintf('sv when temp = 72 is %1.2f\n', ...
        lookup(table, 72, false) );
end

function res = lookup(table, val, getTemp)
    temp = table(:,1);
    sv = table(:,2);
    if getTemp
        res = interp1(sv, temp, val);
    else
        res = interp1(temp, sv, val);
    end
end

