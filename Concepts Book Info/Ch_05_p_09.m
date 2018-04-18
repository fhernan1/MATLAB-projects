% Chapter 5, Problem 9
function Ch_05_P_09 

clear
clc
% 5-9	You are already familiar with the logical operators && (and) 
% and || (or), as well as the unary negation operator ~(not).  
% In a weakly ¬typed language such as MATLAB, the binary states  
% true and false could be equivalently expressed as a 1 or a 0,  
% respectively. Let us now consider a ternary number system,  
% consisting of the states true(1), maybe(2), and false(0).  
% The truth table for such a system is shown below. Implement  
% the truth table by writing the functions, f=tnot(x), f=tand(x,y),  
% and f=tor(x,y). You may not assume that only valid input numbers  
% will be entered.
% x	y	tnot(x)	tand(x,y)	tor(x,y)
% 0	0       1         0           0
% 0	1       1         0           1
% 0	2       1         2           0
% 1	0       0         0           1
% 1	1       0         1           1
% 1	2       0         2           1
% 2	0       2         2           0
% 2	1       2         2           1
% 2	2       2         2           2
% 
% to test the functions, rebuild this truth table
    for x = 0:2
        for y = 0:2
           fprintf('%d %d   %d         %d          %d\n', ...
                     x, y, tnot(x), tand(x, y), tor(x, y)); 
        end
    end
end

function result= tnot(x)
 
    if x == 2
        result = 2;
    else
        result = 1 - x;
    end
end
 
function result= tand(x,y)
 
    if x == 2 || y == 2
        result = 2;
    elseif x == 1 && y == 1
        result = 1;
    else
        result = 0;
    end
end
 
function result= tor(x,y)
 
    if x == 2 && y == 2
        result = 2;
    elseif x == 1 || y == 1
        result = 1;
    else
        result = 0;
    end
end
