% Chapter 13, Problem 1
function Ch_12_P_01 

clear
clc
close all
% 13-1	As an introduction to image problems, perform the following 
% manipulations:
% a.	Find a suitable JPEG image file.  Read it with the function  
% imread(…), display it with image(…) and store the result in A.
% b.	Create a copy of A ,flip the image from left to right and  
% display it in a new figure.  
% c.	Create a copy of A, swap the values for red and blue and display  
% it in a new figure.  
% d.	Create a copy of A, stretch the image to 4 times its original  
% size (twice as many rows and twice as many columns) and display it  
% in a new figure.
% e.	Create a copy of A and then shrink the image to 0.7 its original  
% size in each dimension and display it in a new figure.
    %%a
    A=imread('vette.jpg');
    image(A)
    %%b
    figure
    newA=A;
    imshow(newA(:,end:-1:1,:))
    %%c
    figure
    imshow(newA(:,:,[3 2 1]))
    %%d
    figure
    [r c l]= size(newA)
    image(newA(round(linspace(1,r,2*r)),round(linspace(1,c,2*c)),:))
    %%e
    figure
    [r c l]= size(newA)
    image(newA(round(linspace(1,r, .7*r)),round(linspace(1,c, .7*c)),:))
end
