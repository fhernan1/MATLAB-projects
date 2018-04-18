% Chapter 12, Problem 4
function Ch_12_P_04 

clear
clc
% 12-4	As the enthusiastic and motivated student that you are, you decided
% to go out and buy plenty of pens for all your classes this semester. This
% spending spree occurred at the unfortunate time before you realized your
% engineering classes rendered little use for "ink".  So now, you're left
% with 4 different types of pens and no receipt - you only remember the
% total amount you spent, and not the price of each type of pen. You decide
% to get together with three of your friends who coincidentally did the
% same thing as you, buying the same 4 types of pens and knowing only the
% total amount. In order to find the price of each individual pen, you
% create a matrix called "pens", where each column represents a different
% type of pen and each row represents a different person. 
    pens  =	[3  6  2  5   	% you
   	   	 4  7  5  2     	% friend 1
   	   	 1  3 12  6   	%  friend 2
   	   	 2  8  2  4 ] 	%  friend 3
% You then generate a column vector totals which contains the amount of
% money each of you and your friends spent on the pens:
 totals = [19.60 18.78 25.59 19.26]'
% Write a script to find the prices of each type of pen.
prices = pens\totals
