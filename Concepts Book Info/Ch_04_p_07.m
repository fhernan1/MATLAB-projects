% Chapter 4, Problem 7

clear
clc

% 4-7	 Now that you're comfortable with iteration, you're going to have
% to solve an interesting problem. It seems that the Math department at UGA
% once again dropped the ball, and forgot the value of pi. You are to write
% a function called mypi that consumes a number that specifies the required
% accuracy, and approximates to nth at accuracy the value of pi. You are
% going to use the following algorithm based on geometric probability.
% Think about a quarter circle inside of a unit square (the quarter circle
% has area pi/4). You pick a random point inside the square. If it is in the
% quarter circle, you get a "hit" and if not, you get a "miss". The
% approximate area of the quarter circle will be given by the number of
% hits divided by the number of points you chose.
% Your function should repeat the process of counting hits and misses until
% at least 10,000 tries have been made, and the successive estimates of pi
% are within the prescribed accuracy.  It should return the estimated value
% of pi.
% Hint: Use the function rand(…) in this problem.
N = 10000; %number of tries
win = 0; 
for i = 1:N
    point = rand(1, 2);
    x = point(1);
    y = point(2);
    dist = x*x + y*y;
    if dist <= 1
       win = win + 1; 
    end
end
estPi = 4 * win / N 
