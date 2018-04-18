% Chapter 13, Problem 3
function Ch_12_P_03 

clear
clc
close all
% 13-3	You are provided an image and your job is to convert the 
% full-sized image to a smaller one. Normally when image processing 
% software is required to resize an image, a complex resizing algorithm 
% is used to accomplish the conversion. We will attempt to duplicate 
% this conversion. Write a function called resizeMe that takes in a 
% string as an input corresponding to an image file name. The function 
% should then resize the image to 1.414 times its original size in each 
% dimension and display it. Additionally your function should use the 
% built-in function imwrite(…) to write the new image to a file. 
% The name of the new file will be the original file name preceded 
% by 'LG'. For example, if the original filename is called 
% 'yellow_bird.jpg', the new file should be called 'LGyellow_bird.jpg'.
	resizeMe('vette.jpg');

end
function resizeMe(filename)

    imgA=imread(filename);
    [r c l]= size(imgA)
    imgA=imgA(round(linspace(1,r,r*1.414)), ...
              round(linspace(1,c,c*1.414)),:);
    imwrite(imgA, ['LG' filename], 'jpg')
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
