% 15.3	Determining how much water will flow through a culvert is not as
% easy as it might seem at first. The channel could have a non-uniform
% shape, obstructions might influence the flow, friction is important, and
% so forth. A numerical approach allows us to fold all of those concerns
% into a model of how the water actually behaves.
clear
clc
close all

% Consider the following data collected from an actual culvert:
%        	Height, ft			Flow, ft3/sec
vals = [    0				 0
            1.7				 2.6
            1.95			 3.6
            2.60			 4.03
            2.92			 6.45
            4.04			11.22
            5.24            30.61 ]
ht = vals(:,1)'
flow = vals(:,2)'
% Compute a best-fit linear, quadratic, and cubic fit for the data, and
% plot the information on the same graph. Which model best represents the
% data? (Linear is first order, quadratic is second order, and cubic is
% third order.)
clr = 'rgc';
ph = linspace(ht(1), ht(end));
plot(ht, flow, 'b+');
hold on
for fit = 1:3
    coeff = polyfit(ht, flow, fit);
    plot(ph, polyval(coeff, ph), clr(fit))
end
legend({'raw data','linear','quadratic','cubic'},'Location','NorthWest')
    
disp('cubic data fits best')