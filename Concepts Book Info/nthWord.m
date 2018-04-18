function ans = nthWord(str, n)
% find the nth word in a string
firsts = find([true [str ' '] == ' ']);
if n+1 > length(firsts)
    error('sentence not long enough')
else
    ans = str( firsts(n):firsts(n+1)-2 );
end