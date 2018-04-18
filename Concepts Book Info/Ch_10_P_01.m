% Chapter 10, Problem 1
function Ch_10_P_01 

clear
clc
% 10-1	The purpose if this problem is to write a set of functions that 
% calculate the volume of a slant cylinder with an irregular pentagonal  
% cross section shown in Figure 1.
% You will be given two vectors, x and y, containing the coordinates  
% of the corners of the pentagon, and the value h, the vertical height  
% of the cylinder. We will need to break this problem apart, writing  
% functions to solve each part:
% a. 	The volume of the cylinder is the area of the pentagon  
% multiplied by the vertical height; write a function polyvol(x, y, h)  
% to solve this.
% b. 	The area of the pentagon is the sum of the areas of three  
% triangles shown in Figure 2. So we need to write a function  
% pent_area(x, y) that asks for the area of the three triangles  
% and adds them together.
% c. 	Given the coordinates of the corners of a triangle, we  
% need a function tri_area(x, y) to calculate the area of the  
% triangle – see Figure 3. To compute the area of the triangle,  
% we need the values of a, b and c.  So if we had the lengths  
% of the lines, the area of the triangle is given by Heron’s formula:
% A =  ?( s(s-a)(s-b)(s-c) )
% where s is half the sum of a, b and c
% d. 	So we need a function tri_side(x, y) that computes the  
% length of a line when given its end points.
% Then, we can put the pieces back together by calling the  
% functions with the right parameters, and then build and test  
% polyvol using the test cases provided.
% 
    x = [0 1 2 2 1]
    y = [0 2 1 -1 -2]
    plot([x x(1)], [y y(1)])
    polyvol(x, y, 2)
end
function vol = polyvol(x, y, h)

    area = polyarea(x,y); %area of polygon
    vol = area * h; %volume of cylinder

end

%b)

function area = pent_area(a1,a2,a3)
    area = a1+a2+a3;
end
%c)
   
function area = tri_area(x,y)

    c = sqrt((y(2)-y(1))^2 + (x(2)-x(1))^2); %line c
    a = sqrt((y(2)-y(3))^2 + (x(2)-x(3))^2); %line a
    b = sqrt((y(3)-y(1))^2 + (x(3)-x(1))^2); %line b

    s = .5*sum([a b c]); %Herons

    area = sqrt(s*(s-a)*(s-b)*(s-c)); %Herons

end
%d)
function len = tri_side(x,y)

    len = sqrt((x(2)-x(1))^2 + (y(2)-y(1))^2);

end
