% Find a suitable JPEG image file. Read it with the function imread(…), display it with image(…) and store the result as variable A.
A = imread('Leonhard_Euler.jpg', 'jpg'); %explicit file format is optional
% Create a copy of A ,flip the image from left to right and display it in a new figure
imwrite(A, 'lrcopyofA.jpg', 'jpg');
B = imread('lrcopyofA.jpg', 'jpg');
leftRight = B(:,end:-1:1,:); %all rows, all columns reveresed, color layer rgb
% image(leftRight)
% Create a copy of A, swap the values for red and blue and display it in a new figure. 
imwrite(A, 'rbcopyofA.jpg', 'jpg');
C = imread('rbcopyofA.jpg', 'jpg');
redBlue = C;
redBlue(:,:,1:2) = C(:,:,2:3); %swaps red values for blue values, but maintains original blue values
redBlue(:,:,2:3) = C(:,:,1:2); %swaps blue values for red values, and maintains changed red values
% image(redBlue)
% Create a copy of A, stretch the image to 4 times its original size (twice as many rows and twice as many columns) and display it in a new figure.
imwrite(A, 'stretchcopyofA.jpg', 'jpg');
D = imread('stretchcopyofA.jpg', 'jpg');
% RFactor = 2;
% CFactor = 2;
% round(linspace(1, rows, RFactor*rows)); %To use 'rows', the following product must be both licensed and installed:
%   %Database Toolbox
% round(inspace(1, cols, CFactor*cols));
% D(rowVec, colVec)

[r c l]= size(D);
% image(D(round(linspace(1,r,2*r)), round(linspace(1,c,2*c)),:))

% Create a copy of A and then shrink the image to 0.7 its original size in each dimension and display it in a new figure.
imwrite(A, 'shrunkcopyofA.jpg', 'jpg');
E = imread('shrunkcopyofA.jpg', 'jpg');
[r c l]= size(E);
%All images displayed
figure
image(A)
figure
image(leftRight)
figure
image(redBlue)
figure
image(D(round(linspace(1,r,2*r)), round(linspace(1,c,2*c)),:))
figure
image(E(round(linspace(1,r, .7*r)), round(linspace(1,c, .7*c)),:))

