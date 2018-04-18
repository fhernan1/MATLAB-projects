% Chapter 13, Problem 2
function Ch_12_P_02 

clear
clc
close all
% 13-2	An image could be scrambled by doing the following in order:
% a.  	multiple quadrant flips:
% •	top left quadrant becomes bottom right quadrant
% •	top right quadrant becomes bottom left quadrant
% •	bottom right quadrant becomes top left quadrant
% •	bottom left quadrant becomes top right quadrant
% In other "words":
% 1	2
% 3	4
% becomes:
% 4	3
% 1	2
% b.	The image is flipped upside down.
% c.	The red values are swapped with the green values.
% d.	The blue values are flipped left to right
% Write a function called imageScrambler that takes in an image array 
% and a string.  If the string is equal to 'scramble', your function  
% should scramble the image according to the above method and return  
% the modified image in array form.  If the string is equal to  
% 'unscramble', your function should unscramble the image by reversing  
% the above method and return the modified array.  Otherwise, your  
% function should return the array untouched. You may assume that  
% the image array provided will always contain an even number of  
% rows and columns.
% Test your solution by writing a script that reads a selected image,  
% A, ensures that there is an even number of rows and columns and  
% displays the image A.  It should then scramble A returning the  
% result in B and display B.  Finally, it should unscramble B and  
% display the result, C.  Compare C to the original image A.   
% If your code is correct, they should be identical.
    A=imread('vette.jpg');
    [rows cols clrs] = size(A);
    if mod(rows,2) > 0
        A = A(1:end-1,:,:);
    end
    if mod(cols,2) > 0
        A = A(:, 1:end-1,:);
    end 
    subplot(2,2,1)
    image(A)
    subplot(2,2,2)
    sA = imageScrambler(A, 'scramble');
    image(sA)
    subplot(2,2,3)
    usA = imageScrambler(sA, 'unscramble');
    image(usA)
end
function newArray = imageScrambler(imgArray, string)
     newArray = ones(2,2);

    if strcmp(string,'scramble') || strcmp(string, 'unscramble')
        newArray=imgArray(end:-1:1,:,[2 1 3]);
        newArray(:,:,3)= newArray(:,end:-1:1,3);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
