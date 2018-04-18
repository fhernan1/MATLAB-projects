% 5-13	You’re playing a game where you roll a die 10 times. If you roll a
% five or six seven or more times, you win $2; four or more times, you win
% $1; and if you roll a 5 or 6 three or fewer times, you win no money.
% Write a function called diceGame that takes in a vector representing the
% dice values and returns the amount of money won.
clear
clc

% Examples:
diceGame([5 1 4 6 5 5 6 6 5 2]) % should return 2
diceGame([2 4 1 3 6 6 6 4 5 3]) % should return 1
diceGame([1 4 3 2 5 3 4 2 6 5]) % should return 0
% Note: This function should work for any length vector.
