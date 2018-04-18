% 4.5	Rewrite the following MATLAB expression using if statements in
% place of the the or(|) and and(&) operators.
clear
clc

a = 2
b = 102

ans = ((a > b) & (b > 100) ) | ( ~((a < b) & (b <100)))

if a > b
    ans = true
else
    if b > 100
        ans = true
    else
        ans = false
    end
end
        
        

