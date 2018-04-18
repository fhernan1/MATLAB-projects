% 6-3	Write and test a function called DNAComplement that consumes a set
% of letters as a character array that form a DNA sequence such as
% 'gattaca'. The function will produce the complement of the sequence as
% follows: 
% a <-> t  and  g <-> c  (a's become t's, g's become c's, and vice versa) 
% so that 'gattaca' becomes 'ctaatgt'
% 
% Assume that all the letters in the sequence will be lowercase and that
% they will all be either a, t, g, or c.
% Note: You may be tempted to use iteration for this problem, but you do not need it. 
clear
clc

DNAComplement('gattaca')  % becomes 'ctaatgt'
