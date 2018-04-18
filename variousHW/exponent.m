function [ value ] = exponent( n,m )
%calculates n^m = n*n*n*n*...*n (m times)

 value = n;
   for k = 2:m   
     value = value*n;
   end
   display(value)
end

