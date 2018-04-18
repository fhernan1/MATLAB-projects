% h.	Write a function called search that consumes rvca, a random vector cell array, and finds the
%       first vector of length 1 (a scalar).

function ret = search(rvca)
ret = [];
for in = 1:length(rvca)
    x=rvca{in};
    if length(x)==1
        ret=x;
        return
    end
end