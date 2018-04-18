function ans = gibberish(str)
% shift the characters in str + 6 and wrap at z
ans = char(str+6);
over = ans > 'z';
ans(over) = ans(over) - 26;