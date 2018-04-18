% 7.5	The following script is run in MATLAB:
clear
clc

team1 = struct('name', 'Falcons', 'sport', 'Football');
team1.city = 'Atlanta';
team2 = struct('name', 'Fire', 'sport', 'Football', 'city', 'Chicago');
team2.record = '2-2';
team2.sport = 'Soccer';
team1 = setfield(team1,'city', 'ATL');
team3 = rmfield(team2, 'record');
team4 = team2;
% teams = [team1, tam2, team3, team4]  % causes an error
A = isstruct(team2)
% B = team(1).sport
C = isfield(team4,'record')
% D = team3.name
E = getfield(team3, 'sport')
% What are the values of A,B,C,D, and E?

%% Ans:
% A = true
% B cannot be found because MATLAB gives an error when creating the team vector.
% C=true
% D gives an error for the same reason as B
% E ='Soccer'


