% Chapter 13, Problem 6
function Ch_12_P_06 

clear
clc
close all
% 13-6	For this exercise, you will visit – at least in MATLAB – a 
% place you have always wanted to go, but as yet are unable.
% a.	Find or take a picture of yourself with a plain background  
% such as a green screen, using the JPEG image format.  It would  
% be a good idea not to be wearing the color of the background.
% b.	Find a JPEG image of the place you want to go and decide  
% on the rectangle in that scene where your image should appear.   
% Save the width and height of the rectangle and the row and column  
% of its top left corner. 
% c.	Re-size your image to be the width and height of the rectangle.
% d.	Use the color masking technique of section 13.4.2 to copy your  
% image 
%%%%%%%%%%%%%%%%%%%%%%%%%%13-6%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    dog=imread('dogGreen.jpg');
    field=imread('DSC00057.jpg');
    [r c l]= size(dog)
    [r2 c2 l2]= size(field)
    field=field(round(linspace(1,r2,r)), round(linspace(1,c2,c)),:);
    thresh=160
    layer= dog(:,:,1)<thresh & dog(:,:,2)>thresh & dog(:,:,3)<thresh;
    mask(:,:,1)=layer;
    mask(:,:,2)=layer;
    mask(:,:,3)=layer;
    dog(mask)=field(mask);
    imshow(dog)
    imwrite(dog,'Pep on Vacation.jpg')
end

