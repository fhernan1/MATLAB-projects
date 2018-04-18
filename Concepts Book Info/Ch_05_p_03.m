% Chapter 5, Problem 3
function Ch_05_P_03 

clear
clc
% 5-3	 Coming off a respectable 7-6 record last year, your football
% team is looking  to improve on that this season.  They have contacted
%  you and asked for your help projecting some of the scenarios for 
% their win-loss record.  They want you to write a function called 
% teamRecord which takes in two parameters - wins, and losses, and 
% returns two values - season, and wPercentage.  Season should be a 
% logical result that is true for a winning season. wPercentage is 
% the percentage of games won (ranging from 0 to 100).  For example,
[s w] = teamRecord(3,9) % should return season = false, 
% 				wPercentage = 25
[s w] = teamRecord(10, 2) % should return season = true, 
% 				wPercentage = 83.3
end

function [season wPercentage] = teamRecord(wins, losses)
 
season = wins > losses;

wPercentage= (wins/(wins + losses))*100;
end
