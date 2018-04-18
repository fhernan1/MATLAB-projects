function ans = myStrcmp(a, b)
% compare two strings a and b
n = length(a);
if length(b) ~= n
    ans = false;
else
    ans = all(a == b);
end
