% Chapter 6, Problem 1
function Ch_06_P_01 

clear
clc
% 6-1	Solve the following introductory problems on strings.
% a.Write a function dayName that consumes a parameter, day, containing the
% numerical value of a day in the month of September 2008.  Your function
% should return the name of that day as a string. For example: dayName( 8 )
% should return 'Monday'
    for num = 1:30
        day = dayName(num);
    end
% b.You are now given a variable named days, a vector that contains the
% numeric values of days in the month of September 2008.  Write a script
% that will convert each numeric value in the vector days into a string
% named daysOfWeek with the day names separated by a comma and a space. For
% example: if 
    days = [8, 9, 10] % daysOfWeek should be 
% ‘Monday, Tuesday, Wednesday’ 
% Notice that there is no separator before the first day name or
% after the last one.  Hint: you should probably be concatenating the day
% names and the delimiters. 
    daysOfWeek = dayName(days(1));
    for i = 2:length(days)
        daysOfWeek = [daysOfWeek  ', ' dayName(days(i))];
    end
    daysOfWeek
end

function day = dayName(num)
    num = 1 + rem(num-1, 7);
    switch num
        case 1
        day = 'Monday';
        case 2
        day = 'Tuesday';
        case 3
        day = 'Wednesday';
        case 4
        day = 'Thursday';
        case 5
        day = 'Friday';
        case 6
        day = 'Saturday';
        case 7
        day = 'Sunday';
        otherwise
        day = '';
    end
end
