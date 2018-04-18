
function ret = factorial(n)
    if n < 0
        error('Cannot find the factorial for a negative number');
    else
        ret = 1;
        for m = 1:n
            ret = ret * m;
        end
    end