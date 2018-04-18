% Chapter 4, Problem 3

clear
clc

% 4-3	You are hiring grad students from Tech to work for your company
% which you have recently started. The Human Resources department has asked
% you to write a script that will help them determine the chances of an
% individual applicant getting a job after interviewing. The following
% table outlines the rules for determining the chances for the applicant to
% get a job:
% GPA Value
% Chance of Being Hired
% GPA >= 3.5
% 90%
% 3.0<= GPA < 3.5
% 80%
% 2.5 <= GPA < 3.0
% 70%
% 2.0 <= GPA < 2.5
% 60%
% 1.5 <= GPA < 2.0
% 40%
% GPA < 1.5
% 30%
% Your script should repeatedly ask the user for a GPA value and compute
% the student’s chances of being hired.  It should continue asking for GPA
% values until a negative number is entered.  For example:
% GPA input: 4 should give the answer 0.9
% GPA input: 3.5 should give the answer 0.9
% GPA input: 3.4 should give the answer 0.8
G = 1
while G >= 0
    G = input('What is the applicants GPA? ');
    if G > 0
        if G >= 3.5
            chance = 0.9
        elseif G >= 3.0
            chance = 0.8
        elseif G >= 2.5
            chance = 0.7
        elseif G >= 2.0
            chance = 0.6
        elseif G >= 1.5
            chance = 0.4
        else
            chance = 0.3
            break
        end
    end
end
