% 6-8	Write a function called gibberish that takes in a string of the
% lowercase characters 'a' 'z' and produces a gibberish word. You get the
% gibberish word by moving every letter in the word forward six spaces in
% the alphabet. Also, the alphabet must wrap around so that the following
% is true:
%  a->g, b->h,  ... t->z, u->a, v-> b, w->c, x->d, y->e, z->f
% Hint: You may find the mod(x,y) function useful
clear
clc

% Example:
gibberish('buzz') % -> 'haff'
gibberish('stuvwxyz') % -> 'yzabcdef'
