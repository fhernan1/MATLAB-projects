% 16.6	Adapt the bubble sort algorithm to operate on a structure array,
% one of whose fields is called “name.” Sort the structures alphabetically
% by the name field ignoring case. You could use the generic comparison
% functions previously adapted to include comparing alphabetically.
clear
clc

n = 20;
for in = 1:n
    b{in} = randomName;
end
bubblesort(b)
