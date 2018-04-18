% Listing 03.04 Script to compute total soil
% soil depth data for each square produced by the survey
dpth = [8 8 9 8 8 8 8 8 7 8 7 7 7 7 8 8 8 7
8 8 8 8 8 8 8 7 7 7 7 7 8 7 8 8 8 7
8 8 8 8 7 7 8 7 8 8 8 8 8 7 8 8 8 8
7 7 7 8 7 8 8 8 8 8 8 8 7 6 7 7 7 7
8 8 8 8 8 8 8 8 7 7 7 7 7 6 6 7 7 8
8 7 7 8 7 7 8 7 7 7 7 7 7 7 7 7 7 8
9 8 8 9 8 7 8 7 7 7 7 7 6 7 6 7 7 8
8 8 8 9 9 8 8 8 7 6 6 6 6 7 7 8 7 8
9 8 8 7 7 7 7 7 7 6 6 7 7 7 8 8 7 8
9 8 8 7 7 7 6 7 7 6 6 8 8 8 9 9 7 8
9 9 8 8 8 8 7 7 7 7 7 8 8 9 9 9 8 8
9 8 8 7 7 8 7 7 7 7 8 8 9 9 9 8 7 8];
% estimated proportion of each square that should be excavated
area = [1 1 1 1 1 1 1 1 1 1 .3 0 0 0 0 0 0 0
1 1 1 1 1 1 1 1 1 1 .7 0 0 0 0 0 0 0
1 1 1 1 1 1 1 1 1 1 1 .8 .4 0 0 0 0 0
1 1 1 1 1 1 1 1 1 1 1 1 1 .8 .3 0 0 0
1 1 1 1 1 1 1 1 1 1 1 1 1 1 .7 .2 0 0
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 .6 0 0
0 0 0 .7 1 1 1 1 1 1 1 1 1 1 1 .8 0 0
0 0 0 .7 1 1 1 1 1 1 1 1 1 1 1 .7 0 0
0 0 0 .4 1 1 1 1 1 1 1 1 1 1 1 .6 0 0
0 0 0 .1 .8 1 1 1 1 1 1 1 1 1 1 1 .4 0
0 0 0 0 .2 .7 1 1 1 1 1 1 1 1 1 1 .9 .1
0 0 0 0 0 0 .4 .8 .9 1 1 1 1 1 1 1 1 .6];
square_volume = dpth .* area;
total_soil = sum(sum(square_volume))
