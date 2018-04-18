% Chapter 4, Problem 5

clear
clc

% 4-5	You have a friend who has too many clothes to store in her/his tiny
% wardrobe provided by Georgia Tech.  Being a good friend, you offer to
% help to decide whether each piece of clothing is worth saving.  You
% decide to write a script in MATLAB that will compute the value of each
% piece of clothing. A piece of clothing has five attributes that can  used
% to determine its value.  The attributes are:
% condition, color, price, number of matches, and comfort.
% Each attribute will be rated on a scale of 1-5. Write a script called
% clothes in MATLAB that will ask the user for the ratings for each
% attribute and store the result in a vector.  The order of attributes in
% the vector are as follows:
%       [condition color price matches comfort]
% The script should compute a value between 0 and 100; 100 represents a
% good piece of clothing while 0 represents a bad piece of clothing. The
% points that should be given for each attribute are shown below:
% Condition: 	1=>0;  2=>5;  3=>10;  4=>15;  5=>20
% Color:   		1 => blue => 12;  
% 2 => red (UGA Colors) => 2; 
% 3 => pink => 15;
% 4 => yellow (GT Colors) => 20;  
% 5 => white => 12
% Price: 		1 => 8, 2-3 => 16, 4-5 => 20
% Matches: 	1-2 => 8, 3-5 => 19
% Comfort: 	1 => 6, 2-3 => 13, 4-5 =>18
% Note: If a number other than 1-5 is assigned for one of the attributes,
% no points should be given.
attr = [3 5 2 1 4]
condition = attr(1);
color = attr(2);
price = attr(3);
matches = attr(4);
comfort = attr(5);

rating = 0;
if condition == 1
    rating = rating;
elseif condition == 2
    rating = rating + 5;
elseif condition == 3
    rating = rating + 10;
elseif condition == 4
    rating = rating + 15;
elseif condition == 5
    rating = rating + 20;
else
    rating = rating;
end
if color == 1 | strcmp(color, 'blue')
    rating = rating + 12;
elseif color == 2 | strcmp(color, 'red')
    rating = rating + 2;
elseif color == 3 | strcmp(color, 'pink')
    rating = rating + 15;
elseif color == 4 | strcmp(color, 'yellow')
    rating = rating + 20;
elseif color == 5 | strcmp(color, 'white')
    rating = rating + 12;
else
    rating = rating;
end
if price == 1
    rating = rating + 8;
elseif price == 2 | price == 3
    rating = rating + 16;
elseif price == 4 | price == 5
    rating = rating + 20;
else
    rating = rating;
end
if matches == 1 | matches == 2
    rating = rating + 8;
elseif matches == 3 | matches == 4 | matches == 5
    rating = rating + 19;
else
    rating = rating;
end
if comfort == 1
    rating = rating + 6;
elseif comfort == 2 | comfort == 3
    rating = rating + 13;
elseif comfort == 4 | comfort == 5
    rating = rating + 18;
end
rating
