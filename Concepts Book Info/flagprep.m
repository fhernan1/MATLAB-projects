% 13-2	Given an image file called american_flag.jpg in which the colors
% are red, white, and blue, and the code is as follows:
clear
clc
close all

af = imread('american_flag_1.jpg');
image(af)
row = 150;
figure
r = af(row,:,1);
g = af(row,:,2);
b = af(row,:,3);
plot(r,'r')
hold on
plot(g, 'g')
plot(b, 'b')
figure
[rows cols cl] = size(af);
nl = rows * cols * cl;
afr = reshape(af, 1, nl);
on = find(afr > 60);
off = find(afr <= 60);
afr(on) = 255;
afr(off) = 0;
af = reshape(afr, rows, cols, 3);
r = af(row,:,1);
g = af(row,:,2);
b = af(row,:,3);
plot(r,'r')
hold on
plot(g, 'g')
plot(b, 'b')
figure
image(af)
imwrite(af,'american_flag.bmp','bmp');