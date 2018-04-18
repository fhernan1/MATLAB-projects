% 15.2	Electric power plants use steam as a “working fluid”. The science
% of thermodynamics makes extensive use of tables when systems such as a
% power plant are analyzed. Depending on the system of interest you may
% only need a portion of the table, such as the following:
clear
clc
% Temperature	Specific Volume	Internal Energy	Enthalpy
%           C		     m3/kg      kJ/kG		 kJ/kg
vals = [    100		   1.6958	   	2506.7		2676.2
            150		   1.9364	   	2582.8		2776.4
            200		   2.172	   	2658.1		2875.3
            250		   2.406	   	2733.7		2974.3
            300		   2.639	   	2810.4		3074.3
            400		   3.103	   	2967.9		3278.2
            500		   3.565	   	3131.6		3488.1 ];
tc = vals( :, 1)';
m3pg =  vals( :, 2)';
kJpG =  vals( :, 3)';
kJpg =  vals( :, 4)';
% Notice that this table is spaced at 50° intervals at first, and then at
% 100° intervals. Assume that you have a project that requires you to use
% this table, and you would prefer not to have to perform a linear
% interpolation every time you use it. Use MATLAB to create a table,
% applying linear interpolation, with a temperature spacing of 25°.
nt = tc(1):25:tc(end);
nm3pg = interp1(tc, m3pg, nt);
nkJpG = interp1(tc, kJpg, nt);
nkJpg = interp1(tc, kJpg, nt);
nvals(:,1) = nt';
nvals(:,2) = nm3pg';
nvals(:,3) = nkJpG';
nvals(:,4) = nkJpg'

