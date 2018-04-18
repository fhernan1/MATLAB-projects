% Chapter 3, Problem 3

clear
clc

%3a
A1 = [2,4,8]
B1 = [3,9,27]
odds=1:2:(2*length(A1));
evens= 2:2:(2*length(A1));
C1(odds)=A1;
C1(evens)=B1
%3b
A2 = [1,2,3,4,5,6]
B2 = [10,20,30]
ln = min([length(A2), length(B2)]);

odds= 1:2:(2*ln);
evens= 2:2:(2*ln);
C2(odds)=A2(1:ln);
C2(evens)=B2(1:ln);
C2 = [C2 A2(ln+1:end) B2(ln+1:end)]
