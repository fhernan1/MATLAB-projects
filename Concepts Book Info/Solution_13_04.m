% 13-4	The edge detection algorithm in Section 13.5 applies only to true
% color images. Rewrite it to apply it to bit-mapped images.

% my plan was to read the file as a bit-map, convert it to true color form
% and run the original algorithm
%  It turns out that the latest version of imread(...) does this
%  automatically, so there is nothing special to do here. 