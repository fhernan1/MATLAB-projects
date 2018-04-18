% 6-5	We need a function called anagram that consumes two character
% strings and returns true if the two are anagrams of each other and false
% otherwise. (An anagram is a word or group of words whose letters can be
% rearranged to spell another word or group of words.)
% a.	Write the function removeSpaces that consumes a character string
% and returns that same string with any spaces removed.
% b.	Write the function anagram.
% Assume that all the characters will be lowercase, but you cannot assume
% that there will be only one word. 
clear
clc

removeSpaces('Now is the time for all good people to vote Republican')


% Examples: 
if ~anagram('dormitory', 'dirty room') % -> true
    disp( 'anagram(''dormitory'', ''dirty room'' should be true')
end
if anagram('yes', 'no') % -> false 
    disp( 'anagram(''yes'', ''no'' should be false')
end
if anagram('cat', 'dog') % -> false
    disp( 'anagram(''cat'', ''dog'' should be false')
end
if ~anagram('conversation', 'conservation') % -> true
    disp( 'anagram(''conversation'', ''conservation'' should be true')
end
disp('end of test')

