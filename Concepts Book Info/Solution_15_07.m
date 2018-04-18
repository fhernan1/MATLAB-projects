% 15.7	Assume that we measure temperatures at three points around the
% cylinder head in the engine from Programming Project 6, instead of at
% just one point. The set of data is then the following:
clear
clc

% Time, sec   Temp1	  Temp2    Temp3
v =     [ 0     0	     0	     0
        1.0	    20	    25	    52
        2.0	    60	    62	    90
        3.0	    68	    67	    91
        4.0	    77	    82	    93
        5.0	   110	   103	    96]
% a.	Assume that these data have been stored in a matrix with six rows
% and four columns. Determine interpolated values of temperature at the
% three points in the engine at 2.6 seconds using linear interpolation.
for in = 1:3
    p(in) = interp1(v(:,1)', v(:,in+1)', 2.6);
end
p
% b.	Using the information from part (a) determine the time when the
% temperature reached 75° at each of the three points in the cylinder head.
for in = 1:3
    t(in) = interp1(v(:,in+1)', v(:,1)', 75);
end
t
