% 13-1	Consider the following image (assume it is a perfect square), saved under the file mysquare.jpg:
%      A B
%      C D
% 
% And the following code:
b = imread('mysquare.jpg');
[n,m,l] = size(b);
a = b(1:end, 1:n/2, :);
c = b(1:end, (n/2 + 1):end, :);
b = [c a];
image(b);
% Which of these will the picture shown on the last line most resemble?
%      a.  	   b.	  c.      d.
%     C D     B A     A       B  
%     A B     D C     C       D
%                     B       A
%                     D       C
