% Chapter 6, Problem 5
function Ch_06_P_05 

clear
clc
% 6-5	You have a big problem. In one of your CS courses, your professor
% decides that the only way you will pass the class is if you write a
% MATLAB function to get him out of a mess. All the grades in his class
% have been accidentally stored into one long string of characters
% containing only the letters A, B, C, D, F and Y. 
% a.	Your job is to write a function called CrazyGrade that will take in
% the string and flip the grades according to the following specifications:
% A becomes F
% B becomes D
% C remains unchanged
% D becomes B
% F becomes A
% Y becomes W
% Your function should take in a string and return an inverted string. You
% may assume that the string will only consist of valid letter grades.  For
% example,
% b. 	To make matters worse, he wants you to organize this modified grade
% set. Write a function called GradeDist to bunch together all the similar
% grades (put all the A’s next to each other, B’s next to each other, etc.)
% Then calculate and return the professor’s grade distribution. Your
% function should take in a string and return a string with all similar
% grades grouped together, along with an array containing percentage values
% from A’s all the way to F’s.
% For example, if there are 15% A’s, 16% B’s, 33% C’s, 16% D’s, 16% F’s and
% 4% W’s, GradeDist should return [15 16 33 16 16 4].
    p1 = CrazyGrade('BADDAD') %should return 'DFBBFB'
    [org dist] = GradeDist(p1)
    p2 = CrazyGrade('BAYBAY') %should return 'DFWDFW'
    [org dist] = GradeDist(p2)
    p3 = CrazyGrade('ABCDFYABCDFYABCDFYABCDFY')
    [org dist] = GradeDist(p3)

end


function grade = CrazyGrade(str)
    grade = str;
    grade(str == 'A') = 'F';
    grade(str == 'B') = 'D';
    grade(str == 'D') = 'B';
    grade(str == 'F') = 'A';
    grade(str == 'Y') = 'W';
end

function [org dist] = GradeDist(grade)
    org = char(sort(double(grade)));
    dist = [ length(find(grade == 'A')) ...
             length(find(grade == 'B')) ...
             length(find(grade == 'C')) ...
             length(find(grade == 'D')) ...
             length(find(grade == 'F')) ...
             length(find(grade == 'W')) ];
    dist = 100 * dist / length(grade);            
end