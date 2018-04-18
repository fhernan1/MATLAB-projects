% 15.4	The population of Earth is expanding rapidly, as is the population
% of the United States. MATLAB includes a built-in data file called census
% that contains U.S. census data since 1790. The data file contains two
% variables, cdate which contains the census dates, and pop, which lists
% the population in millions. To load the file into your workspace, type
% the following:
clear
clc
close all

load census
% Use the curve fitting toolbox to find an equation that represents the data.
clr = 'rgcmk';
pd = linspace(cdate(1), cdate(end));
plot(cdate, pop, 'b+');
hold on
for fit = 1:5
    coeff = polyfit(cdate, pop, fit);
    plot(pd, polyval(coeff, pd), clr(fit))
end
legend({'raw data','1st','2nd','3rd','4th','5th'},'Location','NorthWest')
disp('second order works fine')