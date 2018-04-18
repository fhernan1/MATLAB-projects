function ans = recurFact(n)
%
if n == 0
    ans = 1;
else
    ans = n * recurFact(n-1);
end