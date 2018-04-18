% 13-5	Write a script that reads the image uselessTA.jpg and converts it
% into a RGB matrix. The script then displays a sub-image of uselessTA.jpg.
% The sub-image starts at pixel number 50 on both the x and y axes. The
% height and width of the sub-image are each 50 pixels.
clear
clc
close all

pic = imread('uselessTA.jpg');

small_pic = pic(50:99, 50:99,:);
image(small_pic)
