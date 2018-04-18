% 4.8	Consider a client who wants you to write a simple script to
% calculate a GPA. Given a value between 0.0 and 4.0 as input, your script
% is expected to set the value of the variable letterGrade to a string
% according to the following:
% 			'A'  for 3.5 ? value ? 4.0
% 			'B'  for 2.5 ? value < 3.5
% 			'C'  for 1.5 ? value < 2.5
% 			'D'  for 0.5 ? value < 1.5
% 			'F'  for 0.0 ? value < 0.5
% If the input is not valid, your script should set letterGrade to 'NA'.

clear
clc
% Solution 4-8
% Example usage is below.
gpa = rand*4
calculateGPA

% calculateGPA(gpa) returns 'B'