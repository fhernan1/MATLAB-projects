% c.	Write a function called traverse that iterates across randVCells displaying each vector
%       on a separate line in the Command window.

function traverse(randVCells)
for in = 1:length(randVCells)
    disp(randVCells{in})
end