function ret = chopsticks(v)
    u = mod(v,2)==1;
    v(u) = v(u) - 1;
    ret = sum(v ./ 2);