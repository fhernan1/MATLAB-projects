% 7.2	Consider the following code blocks. Decide which will run correctly, and its output.
% a.	
a = {3 3 3} ;
% This won't run:  a(2)*3
% ??? Function 'mtimes' is not defined for values of class 'cell'.
% b.	
x = {4 5 6 7} ;
y = x{3}*7
% c.	
d = 0 :3 :21 ;
e = 4234 ;
% This won't run: f = d(0)*e
% ??? Attempted to access d(0); index must be a positive integer or
% logical.
% d.	
g = 0:6:23;
g
% e.	
m = [1 2 ; 2 3]
m(2,2)*ones(4)

