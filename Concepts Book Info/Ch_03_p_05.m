% Chapter 3, Problem 5

clear
clc

tests = [90 45 76 21 85 97 91 84 79 67 76 72 89 95 55];
maxGrade= max(tests);
tests= tests/maxGrade;
tests= 100*tests
