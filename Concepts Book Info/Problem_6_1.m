% 6-10	Write a function called middler that consumes a character string that is a complete name and returns a numerical value of 1 or 0 depending on whether there is a middle name or not in the string. If there is a middle name or middle initial in the string, middler should return true; otherwise, the function should return false. 
% Examples: 
% middler('George Burdell') should return false, 
% middler(‘Madonna’) should return false, and 
% middler('Pamela Lee Anderson') should return true.
% 6-11	You have a big problem! In one of your CS courses, your professor decides that the only way you will pass the class is if you write a function for him. All the grades in his class have been stored into one long string of characters as follows:
%  'ACFCABDFACAFBCDAFCBAWCBCBAWDDABWDDCCCFAAB'
% a.	Your job is to write a function called CrazyGrade that will take in the long string and flip the grades according to the following specifications:
% •	A becomes F
% •	B becomes D
% •	C remains unchanged
% •	D becomes B
% •	F becomes A
% •	And for kicks, W becomes Y
% Your function should take in a string and return an inverted string. You may assume that the string will only consist of valid letter grades.
% Examples:
% 1. CrazyGrade('BADDAD') should return 'DFBBFB'
% 2. CrazyGrade('BAWBAW') should return 'DFYDFY' 
% b.	To make matters worse, the professor wants you to organize this modified grade set (see (a)). Write a function called GradeDist to categorize similar grades (put all the As next to each other, Bs next to each other, and so on.) Then calculate and return the professor’s grade distribution. Your function should take in a string and return a string with all similar grades grouped together, along with an array containing percentage values from As to Fs. 
% Examples:
% If there are 15% As, 16% Bs, 33% Cs, 16% Ds, 16% Fs and 4% Ys, GradeDist should return [15 16 33 16 16 4].
% <begin Hint>
% Hint: Your header will be: function [anstring dist] = gradeDist(str)
% <end Hint>
