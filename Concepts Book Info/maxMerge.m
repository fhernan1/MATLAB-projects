function ans = maxMerge(n1, n2)
%
ans = readData(n1);
other = readData(n2);
ans(other > ans) = other(other > ans);
