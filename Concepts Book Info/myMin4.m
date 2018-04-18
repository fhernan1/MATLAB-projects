function ret = myMin4(a, b, c, d)
% myMin4  Calculate the minimum value
% myMin4 requires 4 numbers and returns the minimum value of those numbers
% 
% Examples:
% myMin4(1,3,5,7) -> 1
% myMin4(8,9,3,4) -> 3
    vec = [a b c d];
    ret = vec(1);
    for x = vec
        if x < ret
            ret = x;
        end
    end