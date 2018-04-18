% Solution 4-20.d
index = 1;
while index <= length(d)
    if d(index)=='G'
        g(index)='A';
    elseif d(index)=='B'
        g(index)='T';
    else
        g(index)=d(index);
    end
    index = index + 1;
end