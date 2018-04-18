function ans = recurSum(v)
%
if length(v) == 0
    ans = 0;
else
    ans = v(1) + recurSum(v(2:end));
end