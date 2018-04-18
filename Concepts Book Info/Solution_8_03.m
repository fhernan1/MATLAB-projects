% 8.3	You are provided with two files: atlanta.txt and ttimes.txt. Each is a delimited file that should read correctly using dlmread(). We need to explore and plot the data in these files. 
% Hints: The file atlanta.txt contains the end points of a large number of roads throughout the city. The x coordinate and y coordinate of each end of the roads are in adjacent columns. There is also a column for the class of road (1–6) that could be used to color the roads differently. The file ttimes.txt contains values of the travel times from certain x–y coordinate locations (on the same scale as the map) to the center of the city. If you look carefully, you will see that it contains all the data that would have come from a meshgrid(…)call. The first few columns define the indices in the meshgrid where that line of data belongs.
% Follow these steps.
% a.	Read the file atlanta.txt. Determine the columns defining the roads and plot the roads using the function line(…).
% b.	Read the file ttimes.txt. Figure out the three appropriate columns and plot this data using surf(…).
% c.	Title the plot and label the axes.
clear
clc
close all

% draw the streets
 raw = dlmread('atlanta.txt');
 streets = raw(:,3:7);
 [rows,cols] = size(streets)
 colors = 'rgbkcmo';
 for in = 1:rows
      x = streets(in,[1 3])/1000000;
      y = streets(in,[2 4])/1000000;
      col = streets(in,5);
      col(col < 1) = 7;
      col(col > 6) = 7;
      plot(x,y,colors(col));
      hold on
  end
 
% plot the travel times
 tt = dlmread('ttimes.txt');
 [rows,cols] = size(tt)
 for in = 1:rows
     r = tt(in, 1); c = tt(in, 2);
     xc(r,c) = tt(in, 4)/1000000;
     yc(r,c) = tt(in, 5)/1000000;
     zc(r,c) = tt(in, 6);
 end
 surf(xc, yc, zc)
 shading interp
 alpha(.5)
 grid on
 axis tight
 xlabel('Longitude')
 ylabel('Latitude')
 zlabel('Travel Time (min)')
 view(-30, 45)
