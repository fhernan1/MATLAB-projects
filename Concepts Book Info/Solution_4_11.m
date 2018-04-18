% 4.11	You have a friend who has too many clothes to store in a tiny
% closet. Ready to lend a hand, you offer to help your friend decide
% whether each piece of clothing is worth saving. You write a script that
% will compute the value of each piece of clothing.
% Each piece of clothing has five attributes that can be used to determine
% its value. The attributes are:
% condition, color, price, number of matches, and comfort.
% Each attribute will be rated on a scale of 1–5.
% Your script will analyze a vector V of length 5 containing the ratings
% for each attribute. The order of attributes in the vector is:
% [condition color price matches comfort]
% The script should calculate a variable value between 0 and 100; 100
% represents a good piece of clothing while 0 represents a bad piece of
% clothing.
% The points that should be given for each attribute are:
% Condition: 	1 => 0, 2 => 5, 3 => 10, 4 => 15, 5 => 20
% Color:     	1 => blue => 12
%                	2 => red (UGA Colors) => 2 
% 		3 => pink => 15
% 		4 => yellow (GT Colors) => 20
% 		5 => white => 12
% Price:	1 => 8, 2-3 => 16, 4-5 => 20
% Matches:	1-2 => 8, 3-5 => 19
% Comfort:	1 => 6, 2-3 => 13, 4-5 =>18
% Note: If a number other than 1–5 is assigned for one of the attributes,
% then no points should be given.
clear
clc
V = ceil(rand(1,5) * 4)
% Solution 4-11
condition = [0 5 10 15 20];
color = [12 2 15 20 12];
price = [8 16 16 20 20];
matches = [8 8 19 19 19];
comfort = [6 13 13 18 18];
quality = [condition;color;price;matches;comfort];
points = 0;
for index=1:length(V)
    if V(index) >= 1 & V(index) <= 5
        points = points + quality(index,V(index));
    end
end
points