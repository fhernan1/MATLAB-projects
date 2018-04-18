% Chapter 11, Problem 2
function Ch_11_P_02 

clear
clc
close all
% 11-2	Your task is to create a script called thisPlot. This script 
% should do the following:
% a.	Ask the user to enter in a positive number, N, greater than 5.
% b.	The script should then calculate the factorial for each number  
% from 1 to N. Each of these values should be stored into a vector.
% c.	The script should then display a graph titled 'Logarithmic  
% Growth', where the logarithms for each of the factorials is displayed. 
% d.	Add to the graph a continuous linear line that follows the  
% equation y = x with x values from 1 to N.
% e.	Since the numbers will have different magnitudes, use plotyy  
% to plot the linear values on the right hand axis.
    N = 30
    thisPlot(N)
end

function thisPlot(N)
    x = 1:N;
    vector=[]
    for index=x
        vector= [vector factorial(index)];
    end
    plotyy(x,log(vector),x, x )
    title ('Logarithmic Growth')
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
