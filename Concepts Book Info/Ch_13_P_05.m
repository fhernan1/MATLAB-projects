% Chapter 13, Problem 5
function Ch_12_P_05 

clear
clc
close all
% 13-5	We have obtained new intelligence that the Housing Department 
% has plans to renovate all the rooms in the dorms with a new prototype.  
% However, the prototype has been encoded into 3 separate images to  
% avoid rival students from finding out about it and thus seeking refuge  
% here. Each image only contains one layer of color (i.e  
% roomScrambledRed.jpg only contains the Red layer, etc. ) As a loyal  
% student, it is your job to reconstruct a new image out of these 3 images. 
% a.	Create a script called room, and read the three layers using  
% 'imread'.  Create the new matrix ReconImage with the three layers  
% and display it using 'imshow'.
% b.	After detailed analysis of the image, you also find that it  
% is scrambled. Using advanced crytography and whizbang mathematical  
% formulas, you have come to the conclusion that the 4 quadrants of  
% the image has been re-arranged. Manipulate the composite image from  
% part a. and re-arrange the pieces to form the proper image. Display  
% it using subplot(…), below the first image.
%%%%%%%%%%%%%%%%%%%%%%%%%%13-5%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%a
    redFile = 'roomScrambledRed.jpg';
    greenFile = 'roomScrambledGreen.jpg';
    blueFile = 'roomScrambledBlue.jpg';
    A=imread(redFile);
    [r c cl] = size(A);
    ReconImage = uint8(zeros(r, c, 3));
    ReconImage(:,:,1) = A(:,:,1);

    B=imread(greenFile);
    ReconImage(:,:,2) = B(:,:,2);

    C=imread(blueFile);
    ReconImage(:,:,3) = C(:,:,3);
    subplot(2,1,1)

    image(ReconImage)
    
    it = ReconImage;
    it(:,1:end/2,:) = ReconImage(:, end/2+1:end,:);
    it(1:end/2,end/2+1:end,:) = ReconImage(end/2+1:end, 1:end/2,:);
    it(end/2+1:end, end/2+1:end,:) = ReconImage(1:end/2,1:end/2,:);
    subplot(2,1,2)
    image(it)
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
