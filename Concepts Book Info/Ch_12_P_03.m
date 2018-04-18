% Chapter 12, Problem 3
function Ch_12_P_03 

clear
clc
% 12-3	Write a function called determinant. This function will take in a
% 3 x 3 matrix of numbers and return the determinant of the matrix. The
% formula for the determinant of a 3 x 3 matrix is as follows
% Given a matrix in the form
% M = [m11 m12 m13; m21 m22 m23; m31 m32 m33]
% The determinant can be found given the following formula
% D= m11(m22m33 - m32m23) - m12(m21m33 - m31m23) + m13(m21m32 - m31m22)
% Note: For this problem, you may make use of the det function. You may not
% use the det function on the original matrix M, passed into your function;
% however you can break the matrix into smaller units and then use the det
% function to solve for the determinant of those individual matrices. In
% short, you may not use the det function to do all the work for you.
    m = magic(3);
    dm = determinant(m)
    ed = determinant(eye(3))
end

function dtmnt = determinant(mtx)
    dtmnt = mtx(1, 1)*det(mtx([2 3], [2 3])) ...
          - mtx(1, 2)*det(mtx([2 3], [1 3])) ...
          + mtx(1, 3)*det(mtx([2 3], [1 2])); 
end
