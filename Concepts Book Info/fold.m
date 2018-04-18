% f.	Write a function called fold that consumes rvca, a random vector cell array, and produces a
%       number that is the total value of all the items in all the vectors in the cell array.
function ret = fold(rvca)
ret = 0;
for in = 1:length(rvca)
    x=rvca{in};
    ret=ret+sum(x);
end