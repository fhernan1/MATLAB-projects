% Chapter 3, Problem 6

clear
clc

A =  [1 2 -1 5 6 7 -4 3 -2 0];
A(A<=0)=0;
A(A>0)=A(A>0).^3
