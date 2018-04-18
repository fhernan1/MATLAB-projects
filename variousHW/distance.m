function [d] = PtDist(x,y,A,B,C)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here\

q = A*m + B*n + C;
m = -(B*n + C)/A;
n = -(A*m + C)/B;
d = abs(A*x + B*y +C)/sqrt(A^2 + B^2);


end

