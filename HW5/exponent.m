function value = exponent(n,m)
%calculates n^m = n*n*n*n*...*n (m times)
%by using recursion

if m == 0
    value = 1;  
else
  
    value = n * exponent(n,m-1);
end 