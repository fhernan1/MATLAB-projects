% 7.12	It turns out that since you've become an expert on rating clothing, 
% Acme Clothing Company has hired you to rate their clothes. Clothes are 
% now structures instead of vectors with the following fields (all of which
% are numbers between 0 and 5):
% Condition
% Color
% Price
% Matches
% Comfort
clear
clc
% First we have to convert your old clothing rating system to their model. 
% Write a function called convertGarment that consumes a vector of clothing 
% values and produces a structure according to the Acme model.
% a.	Write a function called convertClothes that consumes an array 
% (think of it as a vector of vectors) of clothing assessments and produces
% an array of Acme clothing structures. Your original data is:
clothes = [3 2 1 4 5; 1 5 4 3 2; 5 5 5 5 5; 4 1 3 4 3;
           0 1 0 0 1; 2 2 1 2 2; 2 0 1 4 3; 5 4 3 2 1]
acmeClothes = convertClothes(clothes)

% b.	Acme has a much simpler way of rating their clothes than you used 
% before:
% 5 * Condition + 3 * Color + 2 * Price + Matches + 9 * Comfort
% Write a script called rateClothes that will add a Rating field and a 
% Quality field to each of the structures in the acmeClothes array. The 
% Rating field in each structure should contain the rating of that 
% particular article of clothing. The Quality field is a string that is 
% premium if the Rating is over 80, good if over 60, poor if over 20, and 
% liquidated for anything else.
% Note: You must use iteration to solve this problem.
rateClothes
for in = 1:length(acmeClothes)
    acmeClothes(in)
end
