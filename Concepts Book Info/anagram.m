function ans = anagram( stra, strb)
% is stra an anagram of strb?
% Hint: Characters each have a numerical value, and you can also make use of the sort(…) function.
ans = strcmp( sort(removeSpaces(stra)), ...
    sort(removeSpaces(strb)));
