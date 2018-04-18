% Solution 4-20.c
for index = 1:length(d)
    if d(index)=='G'
        f(index)='A';
    elseif d(index)=='B'
        f(index)='T';
    else
        f(index)=d(index);
    end
end