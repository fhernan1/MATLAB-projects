function [ a ] = mySort( v )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
N = length(v);
a(1) = v(1);
for i = 2:N
j = i-1
while (j>=1 && a(j) > v(i))
    a(j+1) = a(j);
    j= j-1;
end
a(j+1) = v(i);
end

end

