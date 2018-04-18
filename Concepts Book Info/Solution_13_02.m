% 13-2	Given an image file called american_flag.jpg in which the colors
% are red, white, and blue, and the code is as follows:
clear
clc
close all

af = imread('american_flag.jpg');
[r1 c1] = find(af(:,:,1) == 255 ...
            & af(:,:,2) == 0 ...
            & af(:,:,3) == 0); 
[r2 c2] = find(af(:,:,1) == 0 ...
            & af(:,:,2) == 0 ...
            & af(:,:,3) == 255);
[r3 c3] = find(af(:,:,1) == 255 ...
            & af(:,:,2) == 255 ...
            & af(:,:,3) == 255);
af(r1,c1,:) = 0;
af(r2,c2,:) = 255;
af(r3,c3,2:3) = 0;
image(af)
% What happens in the resulting image?
% I wouldn't blame you for getting this wrong.
%  MATLAB does not perform 3-d indexing as you expect.
