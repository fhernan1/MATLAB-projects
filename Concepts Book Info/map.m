% d.	Write a function called map that consumes rvca, a random vector cell array, and produces 
%       a new cell array of the same size with each of the vectors in rcva reversed. Test this new
%       cell array with traverse.
function ret=map(rvca)
ret={};
for in = 1:length(rvca)
    x=rvca{in};
    ret{in}=x(end:-1:1);
end