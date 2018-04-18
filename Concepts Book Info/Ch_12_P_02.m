% Chapter 12, Problem 2
function Ch_12_P_02 

clear
clc
% 12-2	World Leaders have decided to come up with a single currency for
% the world. This new currency called the Eullar is defined by the
% following:
% Seven Dollars and three Euros make seventy-one Eullars.
% One Dollar and two Euros make twenty Eullars.
% You are a reputed Economist and your job is to find out the value of a
% Dollar in terms of Eullars.
eq = [7 3; 1 2];
res = [71; 20];
val = eq\res;
dolval = val(1)
