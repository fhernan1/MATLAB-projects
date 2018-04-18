% 7.14	Georgia Tech has added a new award for students who were 
% "almost there" last semester and just missed making the Dean's List.
% a.	Write a function called almost that iterates through an array of 
% student structures that it takes in, and returns a cell array of names of
% those that have a semester GPA between 2.9 and 2.99 (inclusive). The 
% student structure has the following fields:
% Name—string (e.g., 'George P. Burdell')
% Semester_GPA—decimal number (e.g., 2.97)
% Cumulative_GPA—decimal number (e.g., 3.01)
% b.	Write a test script that populates an array of student structures
% and verifies that almost is working correctly.

clear
clc
%% Ans:
%% Part b
aStud=struct('Name', {'Bob', 'Jane', 'Mary', 'Bret', 'Shawn'});
for in = 1:5
    n1 = num2str(rand*0.5 + 2.5);
    n2 = num2str(rand*0.2 + 2.5);
    aStud(in).Semester_GPA = str2num(n1(1:4));
    aStud(in).Cumulative_GPA = str2num(n2(1:4));
end
aStud(3).Semester_GPA = 2.95;
disp('Testing the almost function')
disp(almost(aStud))