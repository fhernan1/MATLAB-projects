% Chapter 5, Problem 11
function Ch_05_P_11 

clear
clc
% 5-11	You are playing a game where you roll a die 10 times.  
% If you roll a five or six seven or more times, you win 2 dollars,   
diceGame([5 1 4 6 5 5 6 6 5 2]) %should return 2
diceGame([2 4 1 3 6 6 6 4 5 3]) %should return 1
diceGame([1 4 3 2 5 3 4 2 6 5]) %should return 0
% Note:  This function should work for any length vector.
end

function money= diceGame(vector)
 
valuables = length(find( vector == 5 | vector == 6));
 
    if valuables >= 7
        money= 2;
    elseif valuables >= 4
        money=1;
    else
        money=0;
    end
end
