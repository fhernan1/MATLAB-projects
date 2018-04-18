% 11.1.	Write the MATLAB commands to plot the equation   with the following restrictions:
% •	Vary x and y between –2 and 2 with an increment of .1
% •	The faces should be colored with no lines visible
% Make sure the plot is suitably labeled and titled. 
% 11.2	We need to plot a hyperbolic paraboloid. This is special in mathematics due to the existence of a saddle point or minimax that exists at the origin. This function can be created from the equation  . 
% Write a MATLAB script to plot this function with the following restrictions:
% a.	Vary x and y between ?3 and 3, increment in steps of .1
% b.	Draw the picture as a wire frame with the lines colored to indicate the y value
% c.	Put a color bar on the plot identifying the colors to values of y
% Make sure the plot is appropriately labeled and titled. 
% 11.3	Write and test a function called sineGraph that graphs a sine function four times between the interval [start,stop] on the same graph. The values start and stop will be parameters of the function. The number of points per interval will vary across the plots. More specifically:
% a.		The first time you graph the sine function you should have two evenly spaced points, that is, start and stop
% b.	The next plot should have four evenly spaced points—start, stop, and two in-between
% 11.1.	Write the MATLAB commands to plot the equation   with the following restrictions:
% •	Vary x and y between –2 and 2 with an increment of .1
% •	The faces should be colored with no lines visible
% Make sure the plot is suitably labeled and titled. 
% 11.2	We need to plot a hyperbolic paraboloid. This is special in mathematics due to the existence of a saddle point or minimax that exists at the origin. This function can be created from the equation  . 
% Write a MATLAB script to plot this function with the following restrictions:
% a.	Vary x and y between ?3 and 3, increment in steps of .1
% b.	Draw the picture as a wire frame with the lines colored to indicate the y value
% c.	Put a color bar on the plot identifying the colors to values of y
% Make sure the plot is appropriately labeled and titled. 
% 11.3	Write and test a function called sineGraph that graphs a sine function four times between the interval [start,stop] on the same graph. The values start and stop will be parameters of the function. The number of points per interval will vary across the plots. More specifically:
% a.		The first time you graph the sine function you should have two evenly spaced points, that is, start and stop
% b.	The next plot should have four evenly spaced points—start, stop, and two in-between
% c.		The third has eight evenly spaced points
% d.	The fourth has 256 points
% Make sure to put a legend (title)—“ Multiple graphs on one plot, ” and to label the axes. Make sure each line has a different color. 
% Test your function with the following intervals:
% [0,?/2],[0,2?],[0,4?],[0,16?]
% 11.4	We want to plot the top half of a sphere, that can be created from the equation  , where r is the radius of the hemisphere. Write a MATLAB script to plot this function with the following restrictions:
% a.	The hemisphere has a radius of three units
% b.	Vary x and y between ?3 and 3, incremented in steps of .1
% c.	The surface should be smoothly colored in shades of gray with no lines apparent
% Make sure the plot is appropriately labeled and titled. 
% 11.5 	Plot the shape generated when you rotate around the x axis the curve y = x2 -2x+1 with x values from 0 to 2 in steps of 0.1.
% 11.6 	Repeat Programming Project 11.5 plotting the same curve rotated around the y axis.
% 11.7	The equation   creates a plot that looks similar to a “Slinky.” Write a MATLAB script to plot the Slinky for  . Make sure the plot is fully labeled and titled. 
% The x and y axes are defined as follows:
% x =  
% y =  
% 11.8	Write a script that will plot the function f(x) = sin(x) for a user-specified range of values. Specifically, prompt the user for the start point and end point to use for the plot’s x-axis, calculate the sine function over the values of x in the interval, and then plot those values. There should be 100 evenly spaced points along the plot’s x-axis, including the start and end points. 
% You should also prompt the user for the title of this plot. Use this answer for the plot title and the y-axis label. Label the x-axis ‘x values’.
% <Begin Hint>
% Hint: Put ‘s’ as the second parameter to input(…) in order to avoid entering the quote marks.
% <End Hint>
% You may assume that the value of the end point will always be greater than the value of the start point.
% 11.9	Write a script to plot the toroid shape that is the body of rotation produced by rotating the curve (x-R)2 + y2 = r2 about the y axis. Use suitable values for r and R where r should be less than R.
% <Begin Hint>
% Hint: It is probably a good idea to use the polar form of the circle:
% x-R = r cos(?)
% y = r sin(?)
% <End Hint>
% 11.10	You just realized that February 14th has passed and you haven’t bought anything for your Valentine. Since you are in the CS1371 class and your date is a CS major, sending the lucky person a MATLAB coded heart would seem like a cool and sincere thing to do. Make sure you follow each and every instruction carefully or your heart will turn out broken. Trust us.
% a.	Create a new script called valentine.m
% b.	Create 2 variables, x and y with range (0 to 2pi, interval 0.05) and (0 to 1, interval 0.05) respectively.
% c.	Use the meshgrid function to generate the matrices xx and yy from x and y
% d.	Define: c = [0.1 + 0.9 * (pi ? abs( xx - pi ))/pi ] .* yy
% e.	Define: aa = c .* cos(xx)
% f.	Define: bb = c.* sin(xx)
% g.	Define: zz = (?2)*aa.^3 + (3/2)*c.^2 + 0.5
% h.	Plot zz against aa and bb.
% Voila! You are now all set to present your heart to your Valentine.
% 11.11	In this problem you will be creating two 3-D plots for comparison using subplot(…) in one row and two columns. Label all axes accordingly (X-axis, Y-axis, and so forth.). Give a title to your plot corresponding to the problem statement. Create the following plots in a script:
% In the first subplot, plot the function f(x,y)=x^2*cos(y) in the range x =  5:5 and y = ?5:5 using mesh. Title this plot Using Mesh.
% In the second subplot, plot the same function as above, in the same range, but using surf. Title this plot Using Surf.
% 11.12	Georgia Tech wants to tear down the Campanile and build a new one that is ridiculously tall. However, before construction begins they need you to model it in MATLAB. Using the equation z = 1/(x^2 + y^2) as the model, write a script that will plot the Campanile. 
% •	Plot the function with both x and y between –0.75 and 0.75 in steps of 0.05
% •	Set your axes such that all of the x,y domain is seen and z runs from 0 to 300
% •	You must account for dividing by 0 (Hint: look up eps in the MATLAB help documentation)
% •	Make sure you use surf to plot your surface
% •	Title the plot Campanile and label the axes
% 11.13	Write a script to use the Joukowski airfoil section to draw a 3-D picture of a complete wing. The wing should have a sweep angle of 30°, and the chord (length of the wing section) at the tip should be half of the root chord.
% c.		The third has eight evenly spaced points
% d.	The fourth has 256 points
% Make sure to put a legend (title)—“ Multiple graphs on one plot, ” and to label the axes. Make sure each line has a different color. 
% Test your function with the following intervals:
% [0,?/2],[0,2?],[0,4?],[0,16?]
% 11.4	We want to plot the top half of a sphere, that can be created from the equation  , where r is the radius of the hemisphere. Write a MATLAB script to plot this function with the following restrictions:
% a.	The hemisphere has a radius of three units
% b.	Vary x and y between ?3 and 3, incremented in steps of .1
% c.	The surface should be smoothly colored in shades of gray with no lines apparent
% Make sure the plot is appropriately labeled and titled. 
% 11.5 	Plot the shape generated when you rotate around the x axis the curve y = x2 -2x+1 with x values from 0 to 2 in steps of 0.1.
% 11.6 	Repeat Programming Project 11.5 plotting the same curve rotated around the y axis.
% 11.7	The equation   creates a plot that looks similar to a “Slinky.” Write a MATLAB script to plot the Slinky for  . Make sure the plot is fully labeled and titled. 
% The x and y axes are defined as follows:
% x =  
% y =  
% 11.8	Write a script that will plot the function f(x) = sin(x) for a user-specified range of values. Specifically, prompt the user for the start point and end point to use for the plot’s x-axis, calculate the sine function over the values of x in the interval, and then plot those values. There should be 100 evenly spaced points along the plot’s x-axis, including the start and end points. 
% You should also prompt the user for the title of this plot. Use this answer for the plot title and the y-axis label. Label the x-axis ‘x values’.
% <Begin Hint>
% Hint: Put ‘s’ as the second parameter to input(…) in order to avoid entering the quote marks.
% <End Hint>
% You may assume that the value of the end point will always be greater than the value of the start point.
% 11.9	Write a script to plot the toroid shape that is the body of rotation produced by rotating the curve (x-R)2 + y2 = r2 about the y axis. Use suitable values for r and R where r should be less than R.
% <Begin Hint>
% Hint: It is probably a good idea to use the polar form of the circle:
% x-R = r cos(?)
% y = r sin(?)
% <End Hint>
% 11.10	You just realized that February 14th has passed and you haven’t bought anything for your Valentine. Since you are in the CS1371 class and your date is a CS major, sending the lucky person a MATLAB coded heart would seem like a cool and sincere thing to do. Make sure you follow each and every instruction carefully or your heart will turn out broken. Trust us.
% a.	Create a new script called valentine.m
% b.	Create 2 variables, x and y with range (0 to 2pi, interval 0.05) and (0 to 1, interval 0.05) respectively.
% c.	Use the meshgrid function to generate the matrices xx and yy from x and y
% d.	Define: c = [0.1 + 0.9 * (pi ? abs( xx - pi ))/pi ] .* yy
% e.	Define: aa = c .* cos(xx)
% f.	Define: bb = c.* sin(xx)
% g.	Define: zz = (?2)*aa.^3 + (3/2)*c.^2 + 0.5
% h.	Plot zz against aa and bb.
% Voila! You are now all set to present your heart to your Valentine.
% 11.11	In this problem you will be creating two 3-D plots for comparison using subplot(…) in one row and two columns. Label all axes accordingly (X-axis, Y-axis, and so forth.). Give a title to your plot corresponding to the problem statement. Create the following plots in a script:
% In the first subplot, plot the function f(x,y)=x^2*cos(y) in the range x =  5:5 and y = ?5:5 using mesh. Title this plot Using Mesh.
% In the second subplot, plot the same function as above, in the same range, but using surf. Title this plot Using Surf.
% 11.12	Georgia Tech wants to tear down the Campanile and build a new one that is ridiculously tall. However, before construction begins they need you to model it in MATLAB. Using the equation z = 1/(x^2 + y^2) as the model, write a script that will plot the Campanile. 
% •	Plot the function with both x and y between –0.75 and 0.75 in steps of 0.05
% •	Set your axes such that all of the x,y domain is seen and z runs from 0 to 300
% •	You must account for dividing by 0 (Hint: look up eps in the MATLAB help documentation)
% •	Make sure you use surf to plot your surface
% •	Title the plot Campanile and label the axes
% 11.13	Write a script to use the Joukowski airfoil section to draw a 3-D picture of a complete wing. The wing should have a sweep angle of 30°, and the chord (length of the wing section) at the tip should be half of the root chord.
