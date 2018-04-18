% 12.5	World Leaders have decided to come up with a single currency for
% the world. This new currency called the eullar is defined by the
% following:
% •	Seven dollars and three euros equals seventy-one eullars
% •	One dollar and two euros equals twenty eullars
% As a reputed economist, your job is to determine the value of a dollar in
% terms of eullars. Write a script to compute and print the value of the
% dollar in eullars. For example, your script might print 1 dollar = 4.64
% eullars.
A = [7 3; 1 2]
B = [71;20]
v = A\B
nb = A*v
