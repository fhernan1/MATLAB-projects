function ret = tor(x, y)
    if y == -1
        ret = x;
    elseif y == 1
        ret = 1;
    elseif x == 1
        ret = 1;
    else
        ret = 0;
    end