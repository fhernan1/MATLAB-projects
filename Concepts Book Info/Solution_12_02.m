% 12.2	Which of the following statements is true?
clear
clc

A = rand(4,6)
% 	a.	eye(5) is equivalent to eye(5,5)
all(eye(5) == eye(5,5))
% 	b.	size(eye(size(A))) is equal to size(A)
size(eye(size(A)))
size(A)
% 	c.	Typing “eye” at the command prompt will produce an error
eye