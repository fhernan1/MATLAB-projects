% 3.9	You have just been selected to appear on the show Jeopardy this spring. 
% You decide that it might be to your advantage to use MATLAB to generate a matrix 
% representing the values of the questions on the board. 
% a.	Generate the matrix jeopardy that consists of 6 columns and 5 rows. The
% columns are all identical. but the values of the rows range from 200 to 1,000 in equal increments.
% b.	Next, generate the matrix doubleJeopardy, that has the same dimensions 
% as jeopardy but whose values range from 400 to 2,000.
% 
% <begin Hint>
% Hint: You can use the array jeopardy to help arrive at your answer.
% <end Hint>
% c.	You’ve decided to go even one step further and practice for a round that does not 
% even exist yet. Generate the matrix squaredJeopardy that contains each entry of the original
% jeopardy matrix squared.
clear
clc

%a. 
row = linspace(200,1000,5)'
jeopardy = [row row row row row row]
% b.
doubleJeopardy = jeopardy.*2
%c. 
squaredJeopardy = jeopardy.^2
