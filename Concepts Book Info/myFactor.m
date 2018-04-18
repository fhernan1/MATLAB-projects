function ret = myFactor(num)
    ret = [];
    
    while num > 1
        for j = 2:num
            if isprime(j) && mod(num, j) == 0
                ret = [ret j];
                num = num / j;
                break;
            end
        end
    end
    
    if length(ret) == 0
        ret = 1;
    end