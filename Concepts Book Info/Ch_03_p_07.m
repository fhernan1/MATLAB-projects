% Chapter 3, Problem 5

clear
clc

%7a
jeopardy(5,6)=0;
jeopardy(1, 1:end)= 200;
jeopardy(2, 1:end)= 400;
jeopardy(3, 1:end)= 600;
jeopardy(4, 1:end)= 800;
jeopardy(5, 1:end)= 1000
%7b
doubleJeopardy= jeopardy.*2
%7c 
squaredJeopardy= jeopardy.^2
