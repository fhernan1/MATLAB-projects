% 5-10	A ternary logic system consists of three states: true (1), false
% (–1), and possibly true or false (0). Ternary expressions can be applied
% to values in the ternary system in the same manner as Boolean expressions
% in the binary system. The implementation of the ternary logic expressions
% tand(x,y) to compute the ternary logical ‘and’ and tor(x,y) to compute
% the ternary logical ‘or’ is as follows:
% X	Y	tand(x,y)	tor(x,y)
% -1	-1	-1	-1
% -1	0	-1	0
% -1	1	-1	1
% 0	-1	0	0
% 0	0	0	0
% 0	1	0	1
% 1	-1	-1	1
% 1	0	0	1
% 1	1	1	1
% a.	Write the function tand(x,y) according to the above specification.
% b.	Write the function tor(x,y) according to the above specification.
% c.	Write a test script that thoroughly evaluates the capabilities of
% these two functions by iterating across all possible values of x and y.
clear
clc

for x = -1:1
    for y = -1:1
        fprintf('tand(%i, %i) = %i\n', x, y, tand(x, y));
        fprintf('tor(%i, %i) = %i\n\n', x, y, tor(x, y));
    end
end