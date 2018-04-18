% g.	Write a function called largest that consumes rvca, a random vector cell array, and produces
%       the largest vector. The largest vector is that with the greatest length. If two are of equal
%       length, the vector with the greatest sum will be returned.

function ret = largest(rvca)
ret = [];
for in = 1:length(rvca)
    x=rvca{in};
    if length(x)>length(ret)
        ret=x;
    elseif length(x)==length(ret)
        if sum(x)>sum(ret)
            ret=x;
        end
    end
end