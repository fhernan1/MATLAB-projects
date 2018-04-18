% Listing 9-7 - Initial zero crossings
clear
clc

 px = linspace(-6.3, 8.4, 19);
 py = f(px);
 zeros = find(py(1:end-1) .* py(2:end) <= 0)
 disp('zeros occur just after')
 px(zeros)
 root = findZero([px(zeros(3)) px(zeros(3)+1)])
