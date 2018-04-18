% 4.22	Write a script that transforms a vector V by raising each element
% in the vector to the power of its index and then reversing the order of
% the elements. Examples: V = [4 3 -6 5 2] -> [32 625 -216 9 4] 

% Using vector manipulation
V = V.^(1:length(V));
V = V(end:-1:1);

% Using iteration
for index = 1:length(V)
    V(index) = V(index)^index;
end
V=V(end:-1:1)
