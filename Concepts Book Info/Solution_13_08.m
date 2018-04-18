% 13-8	Write a function called IMrotate that takes in an image matrix and
% a number. The number represents the number of times the function will
% rotate the image by 90°. A negative number signifies counter-clockwise
% rotation and a positive one signifies clockwise rotation. You are not
% allowed to use the built-in function rot90(...).
% Hint: Rotating counter-clockwise once is the same as rotating clockwise three times.
clear
clc
close all

pic = imread('Lake.jpg');
for rot = -2:4
    subplot(3, 3, rot+3)
    image(IMrotate(pic, rot) );
end
%  
