% 7.13	A requirement for all freshmen classes is a progress “standing” 
% during the middle of the term. The results are either a Satisfactory (S) 
% or Unsatisfactory (U). You are the office employee in charge of issuing 
% these grades and you decide to write a function called standing to help
% you. You pull the grade file and discover that the grades are organized 
% as follows:
% Each student is a single element of a structure array and each student 
% has two fields: name and classes that is itself a struct that contains 
% the letter grade for five classes: math, science, english, history and 
% cs. Grades can be A, B, C, D, F, or W.
% Your function should add two more tier one fields for each student: 
% standings and status.
% •	standings should be a string of S's (if grade is A, B, or C) and U's 
% (if grade is anything else) for each of the five classes in alphabetical
% order
% •	status should be either GOOD if there are more S's than U's in the 
% standings field, or BAD otherwise
% Your function should take in a structure array and return the same 
% structure array with the two added fields.
clear
clc

st(1).name = 'Sally';
st(1).classes.math = 'B';
st(1).classes.science = 'D';
st(1).classes.english = 'F';
st(1).classes.history = 'C';
st(1).classes.cs = 'A';
st(2).name = 'Fred';
st(2).classes.math = 'A';
st(2).classes.science = 'F';
st(2).classes.english = 'A';
st(2).classes.history = 'D';
st(2).classes.cs = 'D';
res = standing(st)
res(1)
res(2)
