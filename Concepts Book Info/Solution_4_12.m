% 4.12	You need a script to compute a normalized class average by the
% following steps:
% Given a vector of test scores, tests, first you compute a new vector,
% normTests, which will contain the test scores on a linear scale from 0 to
% 100. A zero still corresponds to a zero, and the highest test score will
% correspond to a 100.
% Hint: see the built-in function max()
% Test this script with:
%   tests = [90 45 76 21 85 97 91 84 79 67 76 72 89 95 55];
% Add to this script the calculation of the letter grade of the class average: 
%     average>90	=> A
% 80<=average<90	=> B
% 70<=average<80	=> C
% 60<=average<70	=> D
%     average<60	=> F 
% Test your script with the following grade vectors:
%  [70 87 95 80 80 78 85 90 66 89 89 100] -> ‘B’
%  [50 90 61 82 75 92 81 76 87 41 31 98] -> ‘C’
%  [10 10 11 32 53 12 34 54 31 30 26 22] -> ‘F
% 
clear
clc
% Solution 4-12
normTests = (tests./max(tests)).*100

if mean(normTests) >= 90
    grade = 'A';
elseif mean(normTests) >= 80
    grade = 'B';
elseif mean(normTests) >= 70
    grade = 'C';
elseif mean(normTests) >= 60
    grade = 'D';
else
    grade = 'F';
end
