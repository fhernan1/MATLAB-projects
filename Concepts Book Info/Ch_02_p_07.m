% Chapter 2, Problem 7

clear
clc

%a)
P = 300000*.8; %principal after 20% down
int = 4.5/100; %interest rate
n = 30*12; %30 yrs * 12 month/yr
%Amortization schedule of a loan: P*int/(1-(1+int)^-n), n is # payments

A30 = P*int/(1-(1+int)^-n) %monthly payment, compounded/amortized
int_compound = A30*n - P; %total interest paid

A30_simple = P*(1+int)/n %monthly payment, simple interest
int_simple = A30_simple*n - P %simple interest paid

%b)     %continuation from part a
n = 15*12;

A15 = P*int/(1-(1+int)^-n) %monthly payment, compounded/amortized
int_compound = A15*n - P; %total interest paid

A15_simple = P*(1+int)/n %monthly payment, simple interest
int_simple = A15_simple*n - P %simple interest paid
