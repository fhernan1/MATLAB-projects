function [ myMin_myMax ] = findPoints( x, y )
%Finds the local minimum and local maximum points. Call 
%input a vector of x values and a vector of y values
%will return two vectors
%the first vector should contains x values where the minimum points occur
%the second vector should contains x values where the maximum points occur
myMin = [];
myMax = []; 

% dy = diff(y); %tried to use the difference so that when they were zero I
% would then check to see if it was a min or max, but they would not always
% zero out depending on how x was spaced. I tried rounding but ended up
% getting too many dy values rounded to zero. This method works for the HW
% but may not work in all cases.
for i = 2:length(y)-1
    if (y(i) >= y(i-1)) && (y(i) >= y(i+1))
        myMax = round(x(i), 2, 'significant');
    elseif (y(i) <= y(i-1)) && (y(i) <= y(i+1))
        myMin = round(x(i), 2, 'significant');
    end
    mMin = isempty(myMin);
    mMax = isempty(myMax);
end

if mMin == 1
    disp('No local Min')
else
    disp('x values where the local Min occurs')
    disp(myMin)
end
if mMax == 1
    disp('No local Max')
else
disp('x values where the local Max occurs')
disp(myMax)
end



end

