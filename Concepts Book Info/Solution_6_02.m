% 6-2	Write the function nthWord(sentence, n) that consumes a character
% string containing words separated by blanks and produces the nth word
% from that sentence. 
% Hint:  find( str == ' ' ) produces the indices of the spaces in the
% sentence that separate all the words except the first and the last.
clear
clc

for in = 1:12
    str = nthWord('Now is the time for all good people to vote Republican', in);
    fprintf('%dth word is %s\n', in, str );
end

