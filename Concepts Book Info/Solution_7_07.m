% 7.7	You are given an array of structures named Stats. Each structure 
% contains the following fields:
% Name, BA, HomeRuns, Errors
% Write a function called MVP that takes in that array and returns the most
% valuable player of the season. The MVP is defined as the player with the
% highest batting average (BA) given he has at least 25 home runs and at
% most 5 errors.
clear
clc
% For example, if the array were constructed as follows:
Stats(1).Name = 'Sleepy';
Stats(1).BA = 0.27;
Stats(1).HomeRuns = 19;
Stats(1).Errors = 4;
Stats(2).Name = 'Dopey';
Stats(2).BA = 0.03;
Stats(2).HomeRuns = 2;
Stats(2).Errors = 4;
Stats(3).Name = 'Grumpy';
Stats(3).BA = 0.46;
Stats(3).HomeRuns = 32;
Stats(3).Errors = 12;
Stats(4).Name = 'Doc';
Stats(4).BA = 0.29;
Stats(4).HomeRuns = 46;
Stats(4).Errors = 0;
Stats(5).Name = 'Happy';
Stats(5).BA = 0.31;
Stats(5).HomeRuns = 27;
Stats(5).Errors = 4;
% MVP(Stats) should return 'Happy'.

%% Testing
disp('Testing the MVP function-')
disp(MVP(Stats))

