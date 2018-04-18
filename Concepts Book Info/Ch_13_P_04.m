% Chapter 13, Problem 4
function Ch_12_P_04 

clear
clc
close all
% 13-4	Write a function called rotate that takes in an image array 
% and a number. The number represents the number of times the function  
% will rotate the image clockwise by 90 degrees. A negative number  
% signifies counter-clockwise rotation and a positive one signifies  
% clockwise rotation.  Hint: Rotating counter-clockwise once is the  
% same as rotating clockwise three times.
% Remember image matrices have to be of type uint8, so make sure to  
% cast the result at the end.
%%%%%%%%%%%%%%%%%%%%%%13-4%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    A = imread('vette.jpg');
    subplot(3,3,1)
    image(A)
    for ndx = -3:3
        subplot(3,3,ndx+5)
        B = rotate(A, ndx);
        image(B);
    end
end
function A = rotate(A, number)

    number = mod(number, 4);
    for ndx = 1:number
            B(:,:,1) = (A(:, :, 1))';
            B(:,:,2) = (A(:, :, 2))';
            B(:,:,3) = (A(:, :, 3))';
            A = B(:, end:-1:1, :);
            clear B;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
