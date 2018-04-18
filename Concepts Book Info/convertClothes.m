% 7.12	It turns out that since you've become an expert on rating clothing, 
% Acme Clothing Company has hired you to rate their clothes. Clothes are 
% now structures instead of vectors with the following fields (all of which
% are numbers between 0 and 5):
% Condition
% Color
% Price
% Matches
% Comfort

% a.	Write a function called convertClothes that consumes an array 
% (think of it as a vector of vectors) of clothing assessments and produces
% an array of Acme clothing structures. Your original data is:
% clothes = [3 2 1 4 5; 1 5 4 3 2; 5 5 5 5 5; 4 1 3 4 3;
%            0 1 0 0 1; 2 2 1 2 ; 2 0 1 4 3; 5 4 3 2 1]

function arr = convertClothes(mat)
[r,c]=size(mat);
arr=struct([]);
for in = 1:r
    v = mat(in,:);
    arr(in).Condition = v(1);
    arr(in).Color = v(2);
    arr(in).Price = v(3);
    arr(in).Matches = v(4);
    arr(in).Comfort = v(5);
end
    