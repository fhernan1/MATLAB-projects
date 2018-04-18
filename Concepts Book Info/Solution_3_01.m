% 3.1	Vector manipulation is an integral part of MATLAB. Do the following exercises to practice your skill.
% Notes: 
% Do not hard code any of the answers for this problem.
% You cannot use iteration for any of the parts of this problem.
% vec = [4 5 2 8 4 7 2 64 2 57 2 45 7 43 2 5 7 3 3 6523 3 ...
%   4 3 0 -65 -343];
% a.	Create a new vector, vecA, that is the same as the vector vec except that all of the 2s have been deleted.
% b.	Create a new vector, vecR, that is the reverse of vec.
% c.	Create a new vector, vecB, that swaps the first and second halves of vec, so vecB will contain the second half of vec followed by the first half of vec.
% d.	Create a new vector, vecS, that contains all of the elements in vec that are smaller than 45. The numbers should be in the same order as they were in vec.
% e.	Create a new vector, vecT, that contains true wherever vec is greater than 10 and false everywhere else. 
% f.	Create a new vector, vec2, that contains every other element of vec starting with the second element. 
% g.	Create a new vector, vec3R, that contains every third element of vec starting from the last element and going toward the first element in vec. 
% h.	Create a new vector, vecF, that contains the indices of every element in vec that is equal to 2. 
% i.	Create a new vector, vecN, that contains the indices of every element in vec that is equal to 2 or 4. 
% j.	Create a new vector, vecG, that is the same as vec but with every 2
% or 4 at odd indices deleted.

 vec = [4 5 2 8 4 7 2 64 2 57 2 45 7 43 2 5 7 3 3 6523 3  4 3 0 -65 -343];
 vecA = vec(find(vec~=2))
 vecR = vec(end:-1:1)
 vecB = [vec(end/2+1:1:end) vec(1:end/2)]
 vecS = vec(find(vec<45))
 vecT = vec>10
 vec2 = vec(2:2:end)
 vec3R = vec(end:-3:1)
 vecF = find(vec==2)
 vecN = [find(vec==2) find(vec==4)]
 vecG=vec
vecG(vecN(find(mod(vecN,2)==1))) = []