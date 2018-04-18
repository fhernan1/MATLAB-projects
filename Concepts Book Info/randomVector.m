% a.	Write a function called randomVector that first generates a random size (between 1 and 5)
%       and then fills a vector of that size with random integers in the range (0 …100).

function v =randomVector
v=round(rand(1,round(rand*4+1))*100);