function mergesort(from, to)
% uses global b
global b
%fprintf('mergesort(%d,%d)\n', from, to)
if to > from
    mid = ceil((from + to)/2);
    mergesort(from, mid-1)
    mergesort(mid, to)
    merge(from, mid, to)
end
%fprintf('result of mergesort(%d,%d)\n', from, to)
%b

function merge(f, m, t)
% merge two adjacent sorted segments
global b
%fprintf('merge(%d,%d,%d)\n', f, m, t)
lft = f;
rt = m;
out = 1;
while lft < m && rt <= t
    if b(lft) < b(rt)
        v(out) = b(lft);
        lft = lft + 1;
    else
        v(out) = b(rt);
        rt = rt + 1;
    end
    out = out + 1;
end
while lft < m
    v(out) = b(lft);
    out = out + 1;
    lft = lft + 1;
end
while rt <= t
    v(out) = b(rt);
    out = out + 1;
    rt = rt + 1;
end
b(f:t) = v;
%fprintf('result of merge(%d,%d,%d)\n', f, m, t)
%b

    