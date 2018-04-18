% 6-11	You have a big problem! In one of your CS courses, your professor
% decides that the only way you will pass the class is if you write a
% function for him. All the grades in his class have been stored into one
% long string of characters as follows:
clear
clc
grades = 'ACFCABDFACAFBCDAFCBAWCBCBAWDDABWDDCCCFAAB'
% a.	Your job is to write a function called CrazyGrade that will take in
% the long string and flip the grades according to the following
% specifications:
% •	A becomes F
% •	B becomes D
% •	C remains unchanged
% •	D becomes B
% •	F becomes A
% •	And for kicks, W becomes Y
% Your function should take in a string and return an inverted string. You
% may assume that the string will only consist of valid letter grades.
% Examples:
CrazyGrade('BADDAD') % should return 'DFBBFB'
CrazyGrade('BAWBAW') % should return 'DFYDFY' 
% b.	To make matters worse, the professor wants you to organize this
% modified grade set (see (a)). Write a function called GradeDist to
% categorize similar grades (put all the As next to each other, Bs next to
% each other, and so on.) Then calculate and return the professor’s grade
% distribution. Your function should take in a string and return a string
% with all similar grades grouped together, along with an array containing
% percentage values from As to Fs. 
% Examples:
% If there are 15% As, 16% Bs, 33% Cs, 16% Ds, 16% Fs and 4% Ys, GradeDist
% should return [15 16 33 16 16 4].
% Hint: Your header will be: function [anstring dist] = gradeDist(str)
[anstring dist] = gradeDist(CrazyGrade(grades))
