% 13-7	You are provided an image and your job is to convert the full-sized
% image to one that is one-fourth of the original size. Normally when image
% processing software is required to resize an image, a complex resizing
% algorithm is used to accomplish the conversion. We will attempt to
% duplicate this conversion.
% Write a function called resizeMe that takes in a string as an input
% corresponding to an image file name. The function should then resize the
% image to one-fourth its original size and display it. 
% Additionally your function should use the built-in function imwrite to
% create an image file containing the new image, named with the original
% file name preceded by ‘SM’. For example, if the original file is called
% yellow_bird.jpg, the new file should be called SMyellow_bird.jpg.
% Note: Your function should work with ALL .jpg files! So be sure to test
% it with multiple files of different sizes. Remember image matrices have
% to be of type uint8, so make sure to cast the result at the end.
% You must use iteration to accomplish this task.
% Hint: To generate a pixel in the smaller image, take the average of four
% pixels that make up a square at that position in the original image.
clear
clc
close all

sizeMe('american_flag.jpg')
