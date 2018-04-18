% Chapter 12, Problem 6
function Ch_12_P_06 

clear
clc
close all
% 12-6	Write a function named solveSystem that consumes three inputs:
% two vectors consisting of the coefficients [a b c] of two line equations
% of the form 
% ax + by = c
% a vector of x values
% a.	The function should output a vector giving the x and y values of
% the point of intersection between the two lines.  If the lines are
% parallel, return the empty vector.
% b.	Your function should also plot the two lines using the inputted
% vector of x values as x.  In addition, on the same graph, plot the
% intersection point of the two lines. Make the first line blue, the second
% line red, and the intersection point a magenta diamond (type 'help plot'
% in the MATLAB window for more info). Also, make sure that you label your
% plot appropriately with:
% Title: 'Intersection of Two Lines'
% X and Y axis Labels
% A Legend 'Line 1' and 'Line 2'
% For example:
  solveSystem([1 -1 -1], [3 1 9], -5:5) % should produce [2 3]
end

function pt = solveSystem(line1, line2, xvec)
    mtx = [line1(1:2); line2(1:2)];
    res = [line1(3); line2(3)];
    pt = mtx\res;
    x = pt(1);
    y = pt(2);
    y1 = line1(3)/line1(2) - (line1(1)/line1(2))*xvec;
    y2 = line2(3)/line2(2) - (line2(1)/line2(2))*xvec;
    hold on
        if isnan(pt)
            pt = [];
            plot(xvec, y1, 'b')
            plot(xvec, y2, 'r')
        else
            plot(xvec, y1, 'b')
            plot(xvec, y2, 'r')
            plot(x, y, 'd')
        end
end
