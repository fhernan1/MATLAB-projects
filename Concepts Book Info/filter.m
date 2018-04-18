% e.	Write a function called filter that consumes rvca, a random vector cell array, and produces
%       a new, shorter cell array containing only those cells from the original array whose lengths
%       are greater than 3.

function ret = filter(rvca)
ret={};
for in = 1:length(rvca)
    x=rvca{in};
    if length(x)>3
        ret{in}=x;
    end
end