function y = expon(n,m)
% We have the highest number

% We go down to 0
if m == 0
    y = 1  
else
    % We multiply by all the integers before ours,
    % one at a time...
    y = y * expon(n,m-1)
end 