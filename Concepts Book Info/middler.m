function ans = middler(name)
% is there a middle name or initial?
n = find(name == ' ');
ans = length(n) > 1;
