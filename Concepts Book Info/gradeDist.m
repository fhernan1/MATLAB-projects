function [anstring dist] = gradeDist(str)
% order the string then compute the distribution
anstring = sort(str);
dist(1) = length(find(str == 'A'));
dist(2) = length(find(str == 'B'));
dist(3) = length(find(str == 'C'));
dist(4) = length(find(str == 'D'));
dist(5) = length(find(str == 'F'));
dist(6) = length(find(str == 'Y'));
dist = dist * 100 / length(str);
