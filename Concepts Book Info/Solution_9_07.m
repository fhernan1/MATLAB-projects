% 9.7	Write a function called tracker that takes in a structure and
% returns the number of levels at which it has a field called Inner. Each
% field named Inner can also be structures having a field called Inner, but
% at each level there can be only one field called Inner. The innermost
% structure will not contain a field called Inner. You must use recursion.
% Your function header should be as follows:
% function num = tracker(astruct)
% Hint: Use the isfield(…) function.
clear
clc

a = struct('name', 'Fred');
b = struct('name', 'Bill',  'Inner', a);
c = struct('name', 'Joe',   'Inner', b);
d = struct('name', 'Sally', 'Inner', c);
e = struct('name', 'Ann',   'Inner', d);
f = struct('name', 'Mary',  'Inner', e);

tracker(a)
tracker(c)
tracker(f)
