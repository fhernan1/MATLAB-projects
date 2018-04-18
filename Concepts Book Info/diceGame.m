function ret = diceGame(v)

    count = length(find(v==5)) + length(find(v==6));

    ret = 0;
    if count >= 7
        ret = 2;
    elseif count >= 4
        ret = 1;
    end