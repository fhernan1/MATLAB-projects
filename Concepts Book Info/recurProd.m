function ans = recurProd(v)
%
if length(v) == 0
    ans = 1;
else
    ans = v(1) * recurProd(v(2:end));
end