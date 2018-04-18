clear
clc

x = linspace( -7, 9, 1371 );
a(:,1) = x';
a(:,2) = polyval([0.0333,-0.3,-1.3333,16,0,-187.2,0], x)';
xlswrite('data.xls', a);
