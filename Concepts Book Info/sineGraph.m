function sineGraph(from, to)
% a. The first time you graph the sine function you should have two evenly
% spaced points, that is, start and stop 
% b. The next plot should have four evenly spaced points—start, 
% stop, and two in-between 
% c.The third has eight evenly spaced points 
% d. The fourth has 256 points 
% Make sure to put a legend (title)—“ Multiple graphs on one plot, ” and to
% label the axes. Make sure each line has a different color.
x1 = [from to];
y1 = sin(x1);
x2 = linspace(from, to, 4);
y2 = sin(x2);
x3 = linspace(from, to, 8);
y3 = sin(x3);
x4 = linspace(from, to, 256);
y4 = sin(x4);
plot(x1, y1, x2, y2, x3, y3, x4, y4)
title('Multiple graphs on one plot')
xlabel('X Axis')
ylabel('Y Axis')
legend('2 points','4 points','8 points','256 points','Location', 'SouthEast');