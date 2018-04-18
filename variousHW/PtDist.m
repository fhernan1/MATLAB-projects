function [d] = PtDist(x,y,A,B,C)
%Accepts a coordinate and the constants of a line and returns the perpendicular
%distance from that coordinate to the line.

m = [];
n = [];
q = A*m + B*n + C == 0;

d = abs(A*x + B*y +C)/sqrt(A^2 + B^2);


end

