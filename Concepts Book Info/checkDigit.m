function ret = checkDigit(digits)
    if length(digits) == 5
        ret = mod(10 - mod(sum(digits), 10), 10);
    else
        ret = -1; 
    end