% 15.10	The following data set represents the time and altitude values for
% a sounding rocket that is performing high-altitude atmospheric research
% on the ionosphere.
clear
clc
close all
% Time, sec     Altitude, m
vals = [   0		     60
         10				  2926
         20				 10170
        30				 21486
        40				 33835
        50				 45251
        60				 55634
        70				 65038
        80				 73461
        90				 80905
        100				 87368
        110				 92852
        120				 97355
        130				100878
        140				103422
        150				104986
        160				106193
        170				110246
        180				119626
        190				136106
        200				162095
        210				199506
        220				238775
        230				277065
        240				314375
        250				350704 ]
t = vals(:,1)'
alt = vals(:,2)'
plot(t, alt, 'r^')
clr = 'gkbry';
hold on
% a.	Determine the equation that best represents the data, using the
% interactive curve fitting tools available in MATLAB 7.
for fit = 1:5
    coeff = polyfit(t, alt, fit);
    plot(t, polyval(coeff, t), clr(fit) )
end
% b.	Plot the altitude data. The velocity function is the derivative of
% the altitude function. Using numerical differentiation, compute the
% velocity values from the data, using a backward difference. Plot the
% velocity data. (Note that the rocket is a two-stage rocket.)
figure
dt = diff(t)
vel = diff(alt)./dt
plot(t(2:end), vel)

% c.	The acceleration function is the derivative of the velocity
% function. Using the velocity data determined from part (b), compute the
% acceleration data using backward difference. Plot the acceleration data.

acc = diff(vel)./dt(1:end-1)
figure
plot(t(2:end-1), acc)
