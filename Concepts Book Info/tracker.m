function ans = tracker(str)
%
if isfield(str, 'Inner')
    ans = 1 + tracker(str.Inner);
else
    ans = 0;
end