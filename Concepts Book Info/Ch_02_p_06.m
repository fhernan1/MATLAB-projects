% Chapter 2, Problem 6

clear
clc

power = 45 * 746;  % watts
time = 2 * 25 / 35; % hours
capacity = power * time / 1000  % kw hours
% per Wikepedia:
% D cells are 1.5 volts with a capacity of 12,000 milliamp hours
% storage is 1.5 * 12 / 1000 kWH
Dcell = 1.2 * 12 / 1000
number = capacity / Dcell
