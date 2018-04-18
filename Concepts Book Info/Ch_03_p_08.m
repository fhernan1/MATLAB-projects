% Chapter 3, Problem 8

clear
clc

A=[1 2 3; 4 5 6]
B=[7 8; 9 10; 12 11]
C=[A(:) B(:)];
C=sort(C)
N=3
M=4
reshape(C,N,M)
 
 