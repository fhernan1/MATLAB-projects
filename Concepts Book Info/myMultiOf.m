function ans = myMultiOf(n)
% recursive 
if n == 2
    ans = 2;
else
    ans = n*(n-1)*myMultiOf(n-1);
end
