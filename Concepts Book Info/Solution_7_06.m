% 7.6	The following script is run in MATLAB:
clear
clc
GT.Offense = 60;
GT.Defense = 45;
GT.QB = 'Ball';
NC.Offense = 85;
NC.Defense = 65;
NC.QB = 'Durant';
UGA.Offense = 3;
UGA.Defense = 4;
UGA.QB = 'Greene';
football = [GT NC UGA];
football(1).Factor = 2;
football(2).Factor = 4;
football(3).Rank = 5;
[m n o] = football(:).Offense;
[val, posn] = max([m n o]);
C = [];
for i = [3 1 2]
	C = [C football(i).Defense];
	D(i) = (football(i).Offense);
end
A = football(posn).Rank;
B = football(posn).QB;
% What are the values of A, B, C and D?
A
B
C
D
%% Ans:
% A =[]
% B = 'Durant'
% C =[ 4    45    65]
% D =[ 60    85     3]
