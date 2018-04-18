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
for in = 1:length(acmeClothes)
    x=acmeClothes(in);
    acmeClothes(in).Rating = x.Condition *5 + x.Color*3 + x.Price*2 + ...
        x.Matches + x.Comfort*9;
    y = acmeClothes(in).Rating;
    if y > 80
        acmeClothes(in).Quality = 'premium';
    elseif y > 60
        acmeClothes(in).Quality = 'good';
    elseif y > 20
        acmeClothes(in).Quality = 'poor';
    else
        acmeClothes(in).Quality = 'liquidated';
    end
end