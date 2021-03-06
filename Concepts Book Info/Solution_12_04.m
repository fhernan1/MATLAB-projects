% 12.4	As an enthusiastic and motivated student, you decided to buy plenty
% of pens for all your classes this semester. This spending spree occurred
% at the unfortunate time before you realized that your engineering classes
% required little use for �ink�. So now you�re left with four different
% types of pens and no receipt�you only remember the total amount you
% spent, and not the price of each type of pen. You decide to get together
% with three of your friends who coincidentally did the same thing as you,
% buying the same four types of pens and knowing only the total amount. In
% order to find the price of each individual pen, you create the following
% matrix called data, where each column represents a different type of pen
% and each row represents a different person. 
%             pen1   pen2   pen3   pen4
%    data =    3      6      2      5   <-you
%  	       4      7      5      2   <-friend 1
%  	       1      3      12     6   <-friend 2
%  	       2      8      2      4   <-friend 3
% Then you generate a column vector totals, which contains the totals each
% of you and your friends spent on the pens.
%    totals =   19.60
%         18.78
%         25.59
%         19.26	
% Using the matrix data and the vector totals, find the column vector
% prices that contains the price of each type of pen.
clear
clc

A = [ 3      6      2      5
      4      7      5      2
      1      3      12     6
      2      8      2      4]
B = [19.60
    18.78
    25.59
    19.26]
prices = A\B

