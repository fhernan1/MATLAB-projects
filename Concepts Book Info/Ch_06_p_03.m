% Chapter 6, Problem 3
function Ch_06_P_03 

clear
clc
% 6-3	Write a function called DNAcomplement that consumes a set  of
% letters as a character array that form a DNA sequence such as 'gattaca'.
% The function will produce the complement of the sequence so that a's
% become t's, g's become c's, and vice versa. The string 'gattaca' would
% therefore become 'ctaatgt'. You may assume all the letters in the
% sequence will be lowercase and that they will all be either a,t,g, or c.
% Note:  you may be tempted to use iteration for this problem, but you
% don't need it.
    dna = 'gattaca'
    comp = DNAcomplement(dna)
end

function comp = DNAcomplement(dna)
comp = dna;
comp(dna == 'g') = 'c';
comp(dna == 'c') = 'g';
comp(dna == 't') = 'a';
comp(dna == 'a') = 't';
end

