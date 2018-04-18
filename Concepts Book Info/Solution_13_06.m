% 13-6	Consider this code that reads in an image saved as myimage.jpg:
clear
clc

b = imread('american_flag.bmp');
[m,n,l] = size(b);
count = 0;
for i = 1:m
  for j = 1:n
     if (  sum(double(b(i, j, : )))) == 765  
         % <A>               <B>        <C>
           count = count + 1;
     end
  end
end
count
% 
% What would you put in the place of <A>, <B>,  and <C> to give you the
% number of completely white pixels in the image?
