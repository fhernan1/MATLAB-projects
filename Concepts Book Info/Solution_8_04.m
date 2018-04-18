% 8.4	You are provided with the Excel spreadsheet World_Data.xls. Do the following:
% a.	Find the names of the 10 most populous countries.
% b.	Plot the population growth for each for as many years as data is
% available. Do not forget a title, suitable axis labels, and a legend.
% 
clear
clc

% build the world data structure
wd = buildData('World_Data.xls');

% add the maximum population value
for in = 1:length(wd)
    wd(in).maxPop = max(wd(in).pop);
end
% extract the max pops
maxPops = [wd.maxPop];
% sort the countries by max pop in descending order
[v where] = sort(-maxPops);
% save and display them
fprintf('10 most populous countries are:\n')
for in = 1:10
    fprintf('%s\n', wd(where(in)).name);
    names{in} = wd(where(in)).name;
end
% display styles
clr = 'r-g-b-c-m-r+g.b^c>ms';
for in = 1:10
    cntry = wd(where(in));
    year = cntry.year;
    pop = cntry.pop;
    iclr = in*2;
    semilogy(year, pop, clr(iclr-1:iclr));
    hold on
end
title('Population of the ten most populous countries')
xlabel('year')
ylabel('population')
legend(names,'Location','EastOutside');
